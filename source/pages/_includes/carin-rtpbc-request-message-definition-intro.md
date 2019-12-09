### MessageDefinition: Real-time Pharmacy Benefit Check (RTPBC) Request

This MessageDefinition describes the content of a real-time pharmacy benefit check (RTPBC) request, when using FHIR messaging.
<br>

The Claim resource is the focus in a bundle that also contains other supporting resources referenced by the Claim (Patient, MedicationRequest, Coverage, Practitioner, Organization).
<br>

*Note: The guide describes two methods for submitting the RTPBC request ($submit operation and FHIR messaging using $process-message), with the intent to elicit comments from potential implementers.*

<br>

<div><img src="images/request-message-definition.png" alt="request MessageDefinition"></div>

<br/>