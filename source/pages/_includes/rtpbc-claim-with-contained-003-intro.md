### Example RTPBC request - using contained supporting resources

<br/>

NOTE: This approach was proposed but discarded based on input from consulted workgroups and others.

<br/>

In this example:
* the client is a patient application
* the server is the patient's insurer (specifically, the party that manages the patient's pharmacy benefit)
* the request is submitted as a Claim containing supporting resources, as the single parameter to the processor's Claim.$submit operation

Content:
* the patient's name is Jane Doe, date of birth is 1975-12-05, and address is 100 Oak Court, Madison, WI 53510
* the requested medication is Prozac 10mg capsule, 60 capsules, for a 30 day supply (reflected in the Claim and MedicationRequest resources)
* the prescriber's identifying information is captured in the Practitioner resource
* the requested pharmacy is Hometown Drug (reflected in the Organization resource)
* the patient's coverage identifiers (BIN/PCN, member ID) are conveyed in a Coverage resource

<br/>

The supporting data (patient, coverage, prescription, etc.) consists of identifying information that the processor will use to locate the patient's insurance record and coverage rules applying to the medication, pharmacy and prescriber.

<br/>

<div><img src="images/rtpbc-bundle-request-03-3-claim.png" alt="claim"></div>

<div><img src="images/rtpbc-bundle-request-03-4-patient.png" alt="patient"></div>

<div><img src="images/rtpbc-bundle-request-03-5-coverage.png" alt="coverage"></div>

<div><img src="images/rtpbc-bundle-request-03-6-medication-request.png" alt="medicationrequest"></div>

<div><img src="images/rtpbc-bundle-request-03-7-practitioner.png" alt="practitioner"></div>

<div><img src="images/rtpbc-bundle-request-03-8-organization-pharmacy.png" alt="organization (pharmacy)"></div>

<br/>