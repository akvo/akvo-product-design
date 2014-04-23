# Akvo Accounts

### Documents


### References

* https://github.com/akvo/akvo-product-design/issues/25


### Overview

_Akvo Accounts_ aims to be the central service for authentication and
authorization (a.k.a [Single
Sign-on](https://en.wikipedia.org/wiki/Single_sign-on)) for Akvo products.

Currently each system (RSR, FLOW, Openaid, Akvopedia, Akvo.org website)
has its own way of verifying user credentials. For each system user needs
to remember a user/password combination which is hard to maintain for both
ends, the user and the product.

Ideally an Akvo user should only have one credential that enables access
into any authorization-required resource (web application, mobile
application, api, etc).

### Marketing description

Akvo Accounts is the central service that enables having just **one**
username/password combination across *all* Akvo products.

Imagine just one user that enables you editing Akvopedia, accessing the
FLOW dashboard across several instances, editing a RSR project, and
accessing FLOW/RSR mobile apps, editing some page description on an Akvo
site, etc.

### Initial features

* A single service where all Akvo user will login
* An administration page where Akvo Admins can grant permissions to a
secured resources
* Integration with current Akvo products (RSR, FLOW, Website, etc) will
be rolled out over time as it fits the product schedule and strategic
requirements.
* A suitable service URL should be used. Suggestion is
https://login.akvo.org

### Non goals

* The first iteration does not aim to support authentication options
like YubiKey and similars
* Some advanced login capabilities like two-factor authentication are
not in the scope of the first iteration, but the system should be able
to support it in the near future.
* The authentication/authorization of internal services is out of the
scope of this service

### Scenarios

#### Scenario 1

A user wants to access an Akvo FLOW dashboard, he visits the know url
http://host.akvoflow.org/admin since is a secured resource he gets
redirected to a common login page with a Akvo branding, he/she enters
username and password and after a successful login gets redirected to
the desired url.

The same user now wants to edit a page in the akvo.org website,
navigates to the admin page http://akvo.org/wp-admin logs in
automatically without the need of requesting different credentials

#### Scenario 2

An Akvo user wants to make an project update in Akvo RSR, he/she
downloads the mobile app from the App store, and uses the same unique
credentials he/she uses for login into Akvo FLOW dashboard.

After the first login, the authentication service grants permissions to
the mobile device to make authorized requests on behalf this user to
Akvo systems (until a sign off occurs).

### Technical notes

#### Resources

* http://en.wikipedia.org/wiki/Single_sign-on
* http://en.wikipedia.org/wiki/SAML
* http://openid.net/connect/
* http://openid.net/developers/libraries/
* http://www.youtube.com/watch?v=Kb56GzQ2pSk
* http://oauth.net/2/
* http://www.gluu.org/

### Open issues

#### Roles and permissions

* The system needs to define the concept of a _Role_ and _Permission_
in the context of authorization access to a secured resource
* The requirements for granting access to a given resource are quite broad
and different across products (e.g. RSR needs may not be aligned with
FLOW ones)
* There should be a minimal _Role_ associated with any authorized user
(e.g. `user`) that has the ability to login in. Depending on the
application definition, a `user` can have more privileges than just
logging in


### Details

TBD
