### Systems
This implementation guide defines the responsibilities of two types of systems involved in a Consumer Real-Time Pharmacy Benefit Check interaction:

[**An RTPBC Requester**](CapabilityStatement-rtpbc-requester.html) is a consumer-facing client applications that enables the user to retrieve and view information related to their medications from their insurer, drug discount sources and/or other related data sources.

[**An RTPBC Responder**](CapabilityStatement-rtpbc-responder.html) is an insurer or data source that returns information in response to RTPBC requests.

### Conformance Terms
This implementation guide uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that ought to be adhered to to avoid suboptimal interoperability but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but where there is no recommendation for or against adoption.

### Must Support

Profiles in this implementation guide make use of the [mustSupport]({{site.data.fhir.path}}profiling.html#mustsupport) element.  Base expectations for interpretation of these terms are set in the [FHIR core specification]({{site.data.fhir.path}}conformance-rules.html#conflang).  Also see the mustSupport rules in the US Core implementation guide, which apply to content in this IG which is based on US Core profiles.

In addition, profile element-specific interpretations are included in the associated profile page in this IG.


### Conformance Statements in this Guide

§§§