### MessageDefinition: Real-time Pharmacy Benefit Check (RTPBC) Response

This MessageDefinition describes the content of a real-time pharmacy benefit check (RTPBC) response, when using FHIR messaging.

<br>

*Note: The method for submitting the RTPBC request ($submit operation versus FHIR messaging using $process-message) is being decided by stakeholders.*

<br>

The ClaimResponse resource returns patient pricing and coverage information upon successful processing at the RTPBC source. (An OperationOutcome is returned when an error is encountered)

<br>

<div><img src="https://www.frankmckinney.com/carin-rtpbc/response-message-definition.png" alt="response MessageDefinition"></div>

<br/>