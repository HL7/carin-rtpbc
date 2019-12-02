---
title: Error handling
layout: default
active: Error handling
---

<!-- [Previous Page](Information_content_and_FHIR_resources.html) -->

### Real-time Pharmacy Benefit Check (RTPBC) error handling
<br>

#### ClaimResponse.error usage
In the event that the RTPBC source system (payer/PBM, discount pricing source) is unable to fully process a request because of data or business rule issue, that system SHALL respond by populating the .error composite in the ClaimResponse resource.
<br>

#### Operation outcome usage
In the event of a system or communication error, RTPBC source systems (payer/PBM, discount pricing source) SHALL respond by providing an OperationOutcome resource.

The OperationOutcome:

* SHALL contain a definition of severity in the OperationOutcome.issue.severity field providing a value from the [valueset-issue-severity](http://hl7.org/fhir/ValueSet/issue-severity.html) value set. The cases described below will specify the value to use for each outcome.
* SHALL contain a definition of the type of error in the OperationOutcome.issue.code element, providing a value from the [issue-type value set](http://hl7.org/fhir/valueset-issue-type.html).
* SHALL contain details of the error in the OperationOutcome.issue.details.coding.code and OperationOutcome.issue.details.coding.display fields. These shall be taken from the set of RTPBC error codes as defined in the [CARIN RTPBC Error Code Value Set](ValueSet-carin-rtpbc-error-code-value-set.html). 
     *NOTE: This error code set is a placeholder to be replaced after discussion between stakeholders.*

* SHOULD provide additional diagnostic details of the error in OperationOutcome.diagnostics property

<br>


<!-- [Next Page](Security.html)  -->