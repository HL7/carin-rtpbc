This profile constrains the ClaimResponse resource to serve as the RTPBC Response in the consumer real-time pharmacy benefit check process. 
<br><br>
Data population is similar to a typical *predetermination* ClaimResponse request (where the corresponding Claim.use was set to "predetermination"), with the following key differences:
* in addition to cost and coverage for the requested medication and pharmacy, the responder may also return information about *alternative" medication + pharmacy combinations. These alternatives are conveyed in one or more ClaimResponse.addItem composites, characterized as independent options using an extension defined in this guide ([isAlternative](StructureDefinition-carin-rtpbc-extension-isAlternative.html) 
* the processNote element is used to communicate the level at which the requested drug and pharmacy are covered, as well as alternative drug/pharmacy combinations (using high-level, pre-defined [coverage statements](ValueSet-carin-rtpbc-coverage-summary-value-set.html) tailored to the patient's perspective
* alternative pharmacies are communicated using referenced Organization resources
* certain other elements are fixed to values reflecting a medication-related request...
    ClaimResponse.type = "pharmacy"
    ClaimResponse.addItem elements are constrained to product identifiers and quantity units of measure describing medications.
<br>

In this profile, the ClaimResponse references the following supported resources, both of which are profiled in this guide:
* [Patient](StructureDefinition-carin-rtpbc-patient.html) (containing a small amount of identifying information to enable the insurer to locate the patient's records)
* [Organization](StructureDefinition-carin-rtpbc-pharmacy-organization.html) (identifying an alternative pharmacy)
<br><br>

### Must Support elements in this profile 
**Responding systems**<br>
* Responders SHOULD return pricing and coverage information for relevant drug/pharmacy alternatives, in the addItem composite
* The error composite MUST be populated when the responder cannot complete processing due to a business rule or data exception. Otherwise, the item composite MUST be populated
* The processNote element is a conditional element that MUST be populated when the responder is an insurer (or other processor representing the patient's pharmacy benefit). It is not expected to be populated when the responder is a medication pricing source
* All elements with a minimum cardinality of 1 that are also marked Must Support are essential to communicating patient costs and coverage. The responder MUST ensure that content in these elements is accurate and complete

**Client systems**<br>
* MUST be able to interpret and convey to users all cost and coverage information returned in the response, as appropriate to the application

<br>