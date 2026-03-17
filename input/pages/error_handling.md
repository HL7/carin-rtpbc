### ClaimResponse.error usage

§OP-1:In the event that the RTPBC source system (payer/PBM, discount pricing source) is unable to fully process a request because of data or business rule issue, that system **SHALL** respond by populating the .error composite in the ClaimResponse resource.§ 
§OP-2:Values **SHOULD** be taken from the set of RTPBC error codes as defined in the [RTPBC Error Code Value Set](ValueSet-rtpbc-error-code.html).§ 

<p></p>

### Operation outcome usage

* §OP-3:In the event of a **system or communication error,** RTPBC source systems (payer/PBM, discount pricing source) **SHALL** respond by providing an OperationOutcome resource.§
* §OP-4:OperationOutcomes **SHALL** contain a definition of severity in the OperationOutcome.issue.severity field providing a value from the [valueset-issue-severity](http://hl7.org/fhir/ValueSet/issue-severity.html) value set.§ The cases described below will specify the value to use for each outcome.
* §OP-5:OperationOutcomes **SHALL** contain a definition of the type of error in the OperationOutcome.issue.code element, providing a value from the [issue-type value set](http://hl7.org/fhir/valueset-issue-type.html).§
* §OP-6:OperationOutcomes **SHALL** contain details of the error in the .issue.details.coding.code and .issue.details.coding.display fields.§ 
* §OP-7:OperationOutcomes **SHOULD** provide additional diagnostic details of the error in OperationOutcome.diagnostics property.§

<p></p>
<p></p>

