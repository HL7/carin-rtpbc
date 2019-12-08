---
title: Submission method
layout: default
active: Submission method
---

[Previous Page](Information_content_and_FHIR_resources.html)

*Note: The guide describes two methods for submitting the RTPBC request ($submit operation and FHIR messaging using $process-message), with the intent to elicit comments from potential implementers.*

<br>

### (OPTION) Operation: $submit
The RTPBC request is submitted using the $submit operation on the processor's claim server...
* URL: [base]/Claim/$submit

#### Submit parameter
The operation has a single FHIR resource input parameter consisting of a **Bundle** containing the Claim resource and referenced supporting resources.

#### Request parameter bundle
* Claim - The main RTPBC request
* Patient - Patient-identifying information
* Coverage - Identifiers for the patient's pharmacy insurance
* MedicationRequest - Key prescription information
* Practitioner - Prescriber-identifying information
* Organization - Identifying information for the preferred pharmacy

<a href="Bundle-rtpbc-bundle-response-03.html">Example bundled RTPBC response from payer/PBM. Using $submit operation</a>


#### Response bundle
* ClaimResponse - The main RTPBC response--containing pricing and coverage info
* Patient - Patient-identifying information echoed back from the request
* Organization - Identifying information for alternative pharmacies priced in the response. (0 or more)

*Note: The Coverage, MedicationRequest, Practitioner and submitted pharmacy Organization resources are not echoed back in the response.*

<a href="Bundle-rtpbc-bundle-response-03.html">Example bundled RTPBC response from payer/PBM. Using $submit operation</a>

<br>


-----

### (OPTION) Operation: $process-message
The RTPBC request is submitted using the $process-message operation on the processor's claim server...
* URL: [base]/$process-message

<br>

#### Process-message parameter and response
Like the option above, the $process-message operation takes a single FHIR resource input parameter consisting of a Bundle containing the Claim resource and referenced supporting resources, and returns a Bundle containing a ClaimResponse and supporting resources.

In addition, this method includes a MessageHeader resource in both the request and response.
* In the request, the MessageHeader's *focus.reference* points to the Bundle's Claim resource, per the <a href="MessageDefinition-carin-rtpbc-request-message-definition.html">CarinRtpbcRequestMessageDefinition.</a>
* In the response, the *focus.reference* points to the Bundle's ClaimResponse, per the <a href="MessageDefinition-carin-rtpbc-response-message-definition.html">CarinRtpbcResponseMessageDefinition.</a>

<br>

<a href="Bundle-rtpbc-bundle-request-03-w-header.html">Example bundled RTPBC request to payer/PBM. Using messaging ($process-message operation, with MessageHeaders)</a>

<a href="Bundle-rtpbc-bundle-response-03-w-header.html">Example bundled RTPBC response from payer/PBM. Using messaging ($process-message operation, with MessageHeaders)</a>


<br><br>

[Next Page](Security.html)