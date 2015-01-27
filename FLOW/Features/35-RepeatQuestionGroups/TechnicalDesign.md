Repeat Question Groups
----------------------

# Useful links

http://www.qualtrics.com/university/researchsuite/advanced-building/blocks-and-block-options/loop-and-merge/

# Overview

The idea is to implement something functionally similar to the feature shown above. The technical challenges we will face here are, among others:

* Extend the question group settings, allowing a question group to be *repeatable*.
* A way to determine the number of repetitions, based on:
    - A previous answer to a number question.
    - A previous answer to an option question (multiple values). A new repetition will be created for each checked value.
    - A static list of items (defined in the dashboard). This works similar to the option question, but all the values are defined beforehand.
    - Other context. Alternatively, an enumerator can decide how many repetitions are needed, depending on the context.
* Data serialization. The current format won't allow multiple responses to the same question within a unique survey instance. To go past this constraint, we will use JSON as a question serialization format (strictly speaking, it'd be *question group responses serialization format*)
* For the repetitions dependency, we will extend the concept and scope of existing `Dependency` objects, as they are thoroughly used both in the back-end and app. This is probably the simplest way of dealing of this property.

# Minimum Viable Product

The very first implementation will be a quite simplified version of the aforementioned features. Namely the repetitions dependency, which is the most complex one, will be greatly limited. Each time the enumerator fills in a new block of questions, he will decide whether or not a new repetition is required.

# Final Product

Future versions of the feature need to include a proper way of dealing with various dependency types.

# Technologies

For now, no new frameworks or software components are needed. Only the addition of JSON responses could be considered a relevant detail to be mentioned.

# Testing

TODO

# Estimates

To be determined


Approved and ready for Coding by: 
