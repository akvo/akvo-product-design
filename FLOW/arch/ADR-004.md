# ADR 004: Formatting of response values

## Context

As we introduce new and more complex response types, we need to come up with a consistent, homogeneous solution for serializing all the values.

The historical solution for this issue has been to separate multiple values with pipes, and in some scenarios, creating a JSON-encoded response (i.e. geoshapes).

We currently need to add a new `code` property to some responses, namely to cascade and option types, but we also want to avoid introducing new properties as the response content grows. 

## Decision

As response values are getting more and more complex, there's an increasing need for finding a common solution for all values, and adding new properties will not scale well.

The decision is to extend the JSON-based schema, and encode complex answers in this packed string.
We will also review the meaning of each *response type*, which will determine the encoding of each value (JSON? string? array? etc).

Multiple responses (barcodes, option questions, cascades, etc) will be encoded using a **JSON array**.

## Consequences

* All response types will contain a single value property. This value's format will depend on the question type.
* Response value will need to be processed in different components (dashboard, reports, etc) in order to visualize a human-readable version of the response.
* Existing responses must be taken into account. We need to ensure backwards compatibility.
* GAE test harnesses might need to be adapted to support new format.
