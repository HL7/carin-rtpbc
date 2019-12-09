This profile constrains a Bundle resource for use as the request in a Real-time Pharmacy Benefit Check (RTPBC) process.
<br><br>
The request Bundle profile identifies the resources to be submitted in an RTPBC request. The following are used in all circumstances and have a minimum cardinality of 1:
* Claim
* Patient
* MedicationRequest
* Pharmacy
* Practitioner
* In addition, the Coverage resource is necessary when submitting a request to an insurer or other agent representing the patient's pharmacy benefit. It's minimum cardinality is 0.
<br><br>

### Must Support elements in this profile 
**Client systems**
* All the above Bundle resource entries are designated Must Support. The required elements MUST be populated with correct and complete information in order to elicit reliable information in the RTPBC response.
* When submitting to an insurer, the Coverage resource MUST also be populated.

**Responding insurer systems**
* MUST accept all Must Support resources and make use of provided information when determining cost and coverage

**Responding discount pricing sources**
* Must accept Claim, Patient, MedicationRequest, Pharmacy and Practitioner resources and use as applicable when determining pricing information
<br><br>
