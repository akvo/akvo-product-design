# Akvo Accounts

### Overview

### Minimum Viable Product

#### Communication

Initial features should include encrypted communication between client
(browser, mobile device) and authentication services.

It should also include encrypted communication between the
authentication/authorisation service and any other services which needs
to communicated with the Akvo auth/auth via an API.

Non-encrypted communication at any point is not allowed.

#### Storage

Any storage of authentication and authorisation information in the
service should be encrypted. The encryption should not be a homegrown
solution.


### Final Product

### Technologies

There are several open source implementations of Single Sign-on service:

* http://www.gluu.org/
* http://www.jasig.org/cas
* http://shibboleth.net/

This 3 examples are based on the following protocols:

* [CAS protocol](http://www.jasig.org/cas/protocol)
* [SAML](https://wiki.oasis-open.org/security/FrontPage)
* [OpenID Connect](http://openid.net/specs/openid-connect-core-1_0.html)

#### CAS

It's a system widely [deployed in
universities](http://www.jasig.org/cas/deployments) and defines a custom
protocol. Mostly used for web application single sign-on.


#### SAML

> The single most important requirement that SAML addresses is web
> browser single sign-on (SSO).

Source: https://en.wikipedia.org/wiki/SAML

#### OpenID Connect

> OpenID Connect is an interoperable authentication protocol based on the
> OAuth 2.0 family of specifications. It uses straightforward REST/JSON
> message flows with a design goal of "making simple things simple and
> complicated things possible". It's uniquely easy for developers to
> integrate, compared to any preceding Identity protocol.


> __How does OpenID Connect relate to SAML?__
>
> The Security Assertion Markup Language (SAML) is an XML-based federation
> technology used in some enterprise and academic use cases. OpenID
> Connect can satisfy these same use cases but with a simpler, JSON/REST
> based protocol. OpenID Connect was designed to also support native apps
> and mobile applications, whereas SAML was designed only for Web-based
> applications. SAML and OpenID Connect will likely coexist for quite some
> time, with each being deployed in situations where they make sense.

Source: http://openid.net/connect/faq/

### Testing

### Estimates

Approved and ready for Coding by:
