---
title: Submit operation
layout: default
active: Submit operation
---

[Previous Page](Content_illustration_-_RTPBC_response.html)

### Submitting the Real-time Pharmacy Benefit Check (RTBPC) request
#### Operation
The RTPBC request is submitted using the $submit operation on the processor's claim server...
* URL: [base]/Claim/$submit

#### Submit parameter
The operation has a single FHIR resource input parameter consisting of a **Bundle** containing a MessageHeader resource, the Claim resource and referenced supporting resources.

#### Request parameter bundle
* MessageHeader
	* using an eventCoding.code value of "rtpbc-request"
	* referencing the Claim as the focus resource (MessageHeader.focus.reference)
	* containing identifying information about the submitter in the .source and .source.endpoint elements
* Claim - The main RTPBC request
* Patient - Patient-identifying information
* Coverage - Identifiers for the patient's pharmacy insurance
* MedicationRequest - Key prescription information
* Practitioner - Prescriber-identifying information
* Organization - Identifying information for the preferred pharmacy


#### Response bundle
* MessageHeader
	* using an eventCoding.code value of "rtpbc-response"
	* referencing the ClaimResponse as the focus resource (MessageHeader.focus.reference)
	* containing identifying information about the submitter in the .source and .source.endpoint elements
* ClaimResponse - The main RTPBC response--containing pricing and coverage info
* Patient - Patient-identifying information echoed back from the request
* Organization - Identifying information for alternative pharmacies priced in the response. (0 or more)

*Note: The Coverage, MedicationRequest, Practitioner and submitted pharmacy Organization resources are not echoed back in the response.*


[Next Page](Consumer_vs_provider_RTPBC.html)