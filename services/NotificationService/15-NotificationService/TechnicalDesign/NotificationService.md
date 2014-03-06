# Technical Design
*Notification service*

## References
- [Functional Design](https://github.com/akvo/akvo-product-design/blob/master/services/NotificationService/15-NotificationService/FunctionalDesign/NotificationService.md)
- [#15@product-design](https://github.com/akvo/akvo-product-design/issues/15)
- [Good read: SO question](http://stackoverflow.com/questions/13863761/service-oriented-architecture-transport-layer-http-vs-messaging)

## Overview / Summary
The notification service responds to events emitted by services which are then routed to the proper users notification log. Beside the service itself we define a communicate channel (a message queue), and message formats (protocol buffers).

This diagram is an example workflow with Akvo as the emmitting service. It's only a rough sketch to paint a picture so don't sweat over the details. To follow the flow do realise that the event handlers to the right is the same as the ones in the service.

![notification_service_2](https://f.cloud.github.com/assets/31837/2193228/7fe172f8-9879-11e3-9dde-b449a2f741b2.png)

## Collecting events from services
Akvo internal services will push events to the Notification Service (NS). There are two "contenders" to this communication. Either it can be via HTTP requests or the use of an intermediate message queue acting as a conveyor belt between services and NS. 

HTTP have the benefit of not introducing any extra infrastructure. It's also very friendly under development. Some of the cons of using HTTP is that we create a one to one relationship. We will need to keep NS downtime to a minimum even while upgrades or we face performance issues on the service side. The performance of NS will also become a problem of the services that will wait for their response before moving on. 

On the flip side using a message queue does introduce an additional infrastructure item to manage. But it does decouple the services emitting events (producers) with NS (consumer). We could easily take down NS for an upgrade and let messages queue up and then be consumed when NS is up again. Since we disconnect the services it's get easier to change the arcitecure in the future. If we face a performance problem (I would argue that it's unlikley) we could have multiple consumer processes to chew on the queue.

It seems that the pros of a message queue usage introduces enough benefits to validate the management of it (which should be fairly simple).

### Message queue
There are a number of messages queues to choice from, RabbitMQ, HornetMQ, Zero and so on. Initial testing was based on Rabbit since it support the AMQP standard, is very proven, we have team expertise, it have an very friendly we UI, is easy to install. 

One could argue that there will be a balance act to leverage features from the queue to keep the NS implemenation simple and to not leak too much to the producing services.

### Message encoding
If we push of messages in a fire and forget way it's important that we know that we can handle the messges when they arive at NS. This is one of the reasons for keeping a schema for valid messages, which raised the thought of using protobufs to define that a message is valid before we send them of. 

## Publishing user notifications
There are different ways to make services get to the data from the notification service. It could range from creating new queue on the message queue for each user, send http requests to service or what seems like the most idiomatic and sane thing to do, expose a REST API for other services to consume.

### How about users?
Since we don't have a common user serivce - yet. We will have to deal with seperate users per service.

## Notification service
For the service itself the obvious choices is Python or Clojure, both would be proper choices. The choice have been made to use Clojure.

Tools that seems valuable:   
- [Liberator](http://clojure-liberator.github.io/liberator/) for building REST API
- [Langohr (RabbitMQ client))](http://clojurerabbitmq.info)


## Data store
Since this will be our first service we will have to deal with what we have (and not have). Hence using the future data store of ours will not be a viable option from the get go. We should handle data in a immutable way and use what is simple. Postgres is simple and something we have talked about using for the future datastore so we should review that. 

## API
We will expose a REST API for Akvo internal services to consume. Beside consuming notifications services should also be able to set user preferences. User preferences could be if the user wants to get emails in raw or html, or if the user wants to be direct email on events or a summary in the end of the month.

## Email
The use of external provider?
- Mailchimp, mailgun..
- templates

## Simple example 
A very simplified example of the message queue dance between services & langauges (without protobufs).
A Python producer, RabbitMQ & Clojure producer & consumer.

```python
import pika


def on_open(connection):
    connection.channel(on_channel_open)


def on_channel_open(channel):
    channel.basic_publish('',
                          'langohr.examples.hello-world',
                          'Haj from Pyhton!',
                          pika.BasicProperties(content_type='text/plain',
                                               type='greetings.hi',
                                               delivery_mode=2))
    connection.close()

parameters = pika.URLParameters('amqp://guest:guest@localhost:5672/%2F')
connection = pika.SelectConnection(parameters=parameters,
                                   on_open_callback=on_open)

try:
    connection.ioloop.start()

except KeyboardInterrupt:
    connection.close()
    connection.ioloop.start()

```

And the Clojure 


```clojure
(ns hare.core
  (:gen-class)
  (:require [langohr.core      :as rmq]
            [langohr.channel   :as lch]
            [langohr.queue     :as lq]
            [langohr.consumers :as lc]
            [langohr.basic     :as lb]))

(def ^{:const true}
  default-exchange-name "")

(defn message-handler
  [ch meta ^bytes payload]
  (println (format "[consumer] got message: %s" (String. payload "UTF-8")))
  _((println (format "[consumer] meta was: %s" meta)))
  )

(defn -main
  [& args]
  (let [conn  (rmq/connect)
        ch    (lch/open conn)
        qname "langohr.examples.hello-world"]
    (println (format "[main] Connected. Channel id: %d" (.getChannelNumber ch)))
    (lq/declare ch qname :exclusive false :auto-delete false)
    (lc/subscribe ch qname message-handler :auto-ack true)
    (lb/publish ch default-exchange-name qname "Haj from Clojure!" :content-type "text/plain" :type "greetings.hi")
    (Thread/sleep 20000)
    (println "[main] Disconnecting...")
    (rmq/close ch)
    (rmq/close conn)))

```