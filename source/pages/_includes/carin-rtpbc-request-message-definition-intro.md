### MessageDefinition: Real-time Pharmacy Benefit Check (RTPBC) Request

This MessageDefinition describes the content of a real-time pharmacy benefit check (RTPBC) request, when using FHIR messaging.

<br>

*Note: The method for submitting the RTPBC request ($submit operation versus FHIR messaging using $process-message) is being decided by stakeholders.*


<br>

The Claim resource is the focus in a bundle that also contains other supporting resources referenced by the Claim (Patient, MedicationRequest, Coverage, Practitioner, Organization).

<br>

<div><img src="https://www.frankmckinney.com/carin-rtpbc/request-message-definition.png" alt="request MessageDefinition"></div>

<br/>