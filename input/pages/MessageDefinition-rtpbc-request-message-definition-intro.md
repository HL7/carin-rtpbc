<h3 id="messagedefinition-real-time-pharmacy-benefit-check-rtpbc-request">MessageDefinition: Real-time Pharmacy Benefit Check (RTPBC) Request</h3>
<p>This MessageDefinition describes the content of a real-time pharmacy benefit check (RTPBC) request, when using FHIR messaging.
<br></p>
<p>The Claim resource is the focus in a bundle that also contains other supporting resources referenced by the Claim (Patient, MedicationRequest, Coverage, Practitioner, Organization).
<br></p>
<p><em>Note: The guide describes two methods for submitting the RTPBC request ($submit operation and FHIR messaging using $process-message), with the intent to elicit comments from potential implementers.</em></p>
<br>

<div><img src="request-message-definition.png" alt="request MessageDefinition"></div>

<br/>