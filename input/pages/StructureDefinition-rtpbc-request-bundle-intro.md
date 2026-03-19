The request Bundle profile identifies the resources to be submitted in an RTPBC request. The following are used in all circumstances, are designated Must Support and have a minimum cardinality of 1:
* MessageHeader
* Claim
* Patient
* MedicationRequest
* Pharmacy
* Practitioner
* In addition, the Coverage resource is necessary when submitting a request to an insurer or other agent representing the patient's pharmacy benefit. It's minimum cardinality is 0.

<p></p>

### Must Support elements in this profile 
**Client systems**
* §MS-RB-1:All RTPBC Request Bundle elements designated as Must Support **SHALL** be populated with correct and complete information in order to elicit reliable information in the RTPBC response.§
* §MS-RB-2:When submitting to an insurer, the Coverage resource **SHALL** also be populated.§

**Responding insurer systems**
* §MS-RB-3:RTPBC Responders that are insurers **SHALL** consider all information submitted in Must Support elements when determining cost and coverage.§

**Responding discount pricing sources and other data sources**
* §MS-RB-4:RTPBC Responders that are not insurers **SHOULD** use all applicable submitted information when determining responses.§
<br><br>
