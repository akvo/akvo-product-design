# Akvo Foundation organisation requirements 

Table of contents
-----------------
- Overview

- Organisational requirements

- Technical requirements

Overview
========

This document describes what we call Akvo's organisation requirements. These requirements describe the core thoughts and principles around which Akvo Foundation was created, how it is operated on a daily basis, and the rational behind it. Not only is it a non-trivial task to write fundamental requirements down, the requirements constantly change, so this document will never be "finished".

This document has both organisational and technical requirements listed, as we believe some of the organisational requirements drive technical requirements, even if not all do. However, it would feel disjointed to list only those that do drive technical requirements, or the other way around, so we list all of them here.

Akvo does not have a public "vision and mission", but it is quite a good way of describing what we do, so we use it here anyway.

Organisational requirements
===========================


1. A functional business model
------------------------------
**Requirement**: Akvo needs a functional business model which primarily is based on organisations paying for the use of the internet services which we operate.

**Implementation**: We have chosen internet services which are paid for by the Accountable organisations which use them. (See Trusted partner network below.)

**Rationale**: Akvo should not be dependent on grants for its work, as grants are hard to get reliably over a longer period of time. We also believe that paying for services which you use raises the appreciation for what you get as well as enable you to make an informed decision whether the cost for the service is appropriate. If it is hidden in grants which are paid indirectly then this decision is harder.


2. Trusted partner network
--------------------------
**Requirement**: Partners using Akvo's tools should be trusted.

**Implementation**: Akvo has a tiered partner network. To be a partner which can bring in other partners to be part of the network you have to be classified as an Accountable partner (previuosly Support partner). Accountable partners go through a screening process. 

**Rationale**: The concept of a Trusted Partner Network exists within the Akvo network of partners. The idea is that you should be able to trust that a particular partner does a good job in implementing projects in their area of specialisation. Organisations and individuals come to Akvo to ask for advice on where to invest money or grant money to projects, or evaluate data that the partner has entered into our systems. They rely on our or our Accontable partners judgment that a partner can be trusted to do a good job.

**Comment**: The Akvo Accountable partners go through a process to become an accountable partner. The criteria, the tasks and responsibilities of a typical accountable partner and the process of becoming an accountable parter is documented here: http://www.akvo.org/web/partner_rules (Note that this currently on reflects Akvo RSR Accountable partners. It is needs to be updated for FLOW.)

3. Open source production
-------------------------
**Requirement**: Akvo's work needs to be shared. Akvo's work should not be used by others without sharing back. 

**Implementation**: The tools and systems Akvo builds are openly available in a way that enforces sharing. Software is shared under the Affero General Public License. Documentation and other content is shared under the Creative Commons Attibution, Share Alike, Non-commercial license (CC-BY-SA-NC), the CC-BY or CC-BY-SA license. For a more detailed discussion, please read: http://akvo.org/blog/open-data-content-and-software-at-akvo/

**Rationale**: The key reasons our work should be shared are:

- to avoid the lock-in effect for our partners, to ensure that our partners don't get stranded with proprietary systems
- to promote sharing of systems development among organisations and countries which could save money on shared systems development
- to promote open systems (open source, open content, open APIs), which we believe embodies better democracy

4. Akvo does not work on high-risk data
---------------------------------------
**Requirement**: We do not work on data which need very high levels of security protection.

**Implementation**: We don't handle data in the systems which we manage which requires high levels of security protection or anonymisation. We will communicate this to our partners. 

**Rationale**: Some data which one could collect with our systems could be needing high levels of security protection. For example, one could imagine collecting data about transports to refugee camps near to a war zone. We don't have a big enough team to work on highly sensitive data.

The need for open data is big enough for us to work on without having to take on this specific high-risk narrow target market.

5. Privacy
----------

**Requirement**: We need privacy for some of our data

**Implementation**: We host data in Europe, primarily in the Netherlands. We don't consider the US having adequate data protection legislation and will move away from US services when possible.

**Rationale**: Even when you are working with open data there is always some data which needs to be kept private. Examples would be: 

- household data from surveys
- user data from user accounts, login information, API keys etc.

Other data that we want to keep private is data which could be used to compete against us. In particular there are some data which we don't want to tempt our competitors or potential future competitors with, so we shouldn't put it under their control. This in particular is: 

- web site traffic data

As we are working with information which could potentially be politically sensitive, such as data on water, and we have several partners which we work with that are national governments and large multilateral organisations, we should host data in jurisdictions with good privacy and data protection laws.



Technical requirements
======================
None yet.
