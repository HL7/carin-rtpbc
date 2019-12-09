### MessageDefinition: Real-time Pharmacy Benefit Check (RTPBC) Response

This MessageDefinition describes the content of a real-time pharmacy benefit check (RTPBC) response, when using FHIR messaging.
<br>

The ClaimResponse resource returns patient pricing and coverage information upon successful processing at the RTPBC source. (An OperationOutcome is returned when an error is encountered)
<br>

*Note: The guide describes two methods for submitting the RTPBC request ($submit operation and FHIR messaging using $process-message), with the intent to elicit comments from potential implementers.*

<br>

<div><img src="images/response-message-definition.png" alt="response MessageDefinition"></div>

<br/>
