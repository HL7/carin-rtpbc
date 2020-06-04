<br><br>
Data population is similar to a typical *predetermination* ClaimResponse request (where the corresponding Claim.use was set to "predetermination"), with the following key differences:

* in addition to cost and coverage for the requested medication and pharmacy, the responder may also return information about alternative medication + pharmacy combinations. These alternatives are conveyed in one or more ClaimResponse.addItem composites, characterized as independent options using an extension defined in this guide ([isAlternative](StructureDefinition-rtpbc-isAlternative.html)) 
* the [benefitRestriction](StructureDefinition-rtpbc-benefitRestriction.html) extension is used to communicate the level at which the requested drug and pharmacy are covered, as well as alternative drug/pharmacy combinations (using high-level, pre-defined [benefit restrictions](ValueSet-rtpbc-benefit-restriction.html) tailored to the patient's perspective)
* the processNote element can be used to communicate additional textual information related to the cost or coverage of the requested medication, pharmacy or alternative
* alternative pharmacies are communicated using referenced Organization resources
* certain other elements are fixed to values reflecting a medication-related request...
    ClaimResponse.type = "pharmacy"
    ClaimResponse.addItem elements are constrained to product identifiers and quantity units of measure describing medications.
<br>

In this profile, the ClaimResponse references the following supported resources, both of which are profiled in this guide:
* [Patient](StructureDefinition-rtpbc-patient.html) (containing a small amount of identifying information to enable the insurer to locate the patient's records)
* [Organization](StructureDefinition-rtpbc-pharmacy-organization.html) (identifying an alternative pharmacy)
<br><br>

### Must Support elements in this profile 
**Responding systems**<br>
* Responders SHOULD return pricing and coverage information for relevant drug/pharmacy alternatives, in the addItem composite
* Every response must contain either an item composite or an error composite, but not both. The Item composite MUST be populated when sufficient information is received to be able to answer the request. The error composite MUST be populated when the responder cannot complete processing due to insufficient or invalid information in the request

* The benefitRestrictions extension is a conditional element that MUST be populated when the responder is an insurer (or other processor representing the patient's pharmacy benefit). It is not expected to be populated when the responder is a medication pricing source
* The processNote element is a conditional element that MAY be populated when the responder has additional information about costs or coverage related to an .item or .addItem. The noteNumber links an .item or .addItem to its associated processNote
* All elements marked Must Support are essential to communicating patient costs and coverage. The responder MUST ensure that content in these elements is accurate and complete

**Client systems**<br>
* MUST be able to interpret and convey to users all cost and coverage information returned in the response, as appropriate to the application

<br>