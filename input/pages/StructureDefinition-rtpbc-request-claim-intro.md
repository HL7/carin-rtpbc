This profile constrains the Claim resource so that it can serve as the request in the consumer Real-time Pharmacy Benefit Check (RTPBC) process.
<br><br>
Data population is similar to a typical Claim *predetermination* request (where Claim.use set to "predetermination"), with the following key differences:
Certain elements are fixed to values reflecting a medication-related request...
* Claim.type = "pharmacy"
* Claim.provider references an Organization resource that represents the patient's preferred pharmacy
* Claim.prescription is mandatory (referencing a MedicationRequest resource)
* Claim.careTeam.provider is mandatory, referencing a Practitioner resource that identifies the prescriber
* Claim.item elements are constrained to product identifiers and quantity units of measure describing medications

In addition, no pricing / cost information is submitted in the request since the goal of the exchange is learn the expected cost to the patient rather than reimbursement information for a pharmacy. 
<br><br>

In this profile, the Claim references the following supported resources. All are profiled in this guide except Practitioner, which uses the US Core Practitioner profile without further constraints.
* [Patient](StructureDefinition-rtpbc-patient.html) (containing a small amount of identifying information to enable the insurer to locate the patient's records)
* [Coverage](StructureDefinition-rtpbc-coverage.html) (containing identification of the patient's pharmacy benefit coverage)
* [MedicationRequest](StructureDefinition-rtpbc-medicationrequest.html) (containing excerpts from the prescription to be priced)
* Practitioner (identifying the prescriber. Uses US Core Practitioner)
* [Organization](StructureDefinition-rtpbc-pharmacy-organization.html) (identifying the pharmacy)
<br><br>

### Must Support elements in this profile
**Client systems**<br>
* Elements that are marked Must Support are essential for the responder to identify the applicable plan rules and accurately determine patient costs and coverage. The submitter MUST ensure that content in these elements is accurate and complete in order to receive reliable information in the response.
* A reference to a coverage resource MUST be included when submitting to an insurer. It is not required when submitting to a pricing source.

**Responding systems**<br>

* MUST make use of all pertinent information provided in the Claim request when determining cost and coverage.
<br><br>
