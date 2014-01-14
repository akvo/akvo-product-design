App external data sources - Technical design
----------------------------------------------

### Communication description
* communication between FLOW and Caddisfly will be achieved through Android Intents. An Intent is basically a messaging object that can be used to request an action from other app component (in this case, an external app's component).

* To make this request, FLOW app will describe an Action associated to the Intent (i.e. "org.akvo.flow.action.questionanswer"). This Action will be a property of the Intent when the app triggers it. 

* The caddisfly app will declare within its AndroidManifest.xml that a particular Activity of the app is ready to handle such an Intent. This is done with the creation of Intent Filters. After the water metric is done and the result ready to be delivered, caddisfly app will just return a new Intent, containing the answer that will be stored in FLOW.

### Relevant links
* Receiving data from other apps is quite well explained in this document: http://developer.android.com/training/sharing/receive.html. The document covers the Intent Filter declaration and how to handle the incoming request. A very similar implementation will be required for caddisfly, but with our custom Action.

* More details on Intents and Intent Filters: http://developer.android.com/guide/components/intents-filters.html
