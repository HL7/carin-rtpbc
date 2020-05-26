[Previous Page](Use_cases.html)

The real-time pharmacy benefit check (RTPBC) process involves a request from a consumer application used by a patient to either (a) the party that manages the pharmacy benefit portion of the patient's health insurance or (b) a party that serves as a source for typical and discount medication pricing information. 

### Content when submitting to the patient's insurer
#### *Request content*
The patient application submits a request containing...
* basic patient identifying information
* payer and coverage identifiers
* information from the prescription for which coverage and cost is desired
* the patient's preferred pharmacy

*Example:* <a href="Bundle-rtpbc-bundle-request-03-w-header.html">Bundled RTPBC request</a>


#### *Response content*
The responder... 
* locates the patient's record and coverage details
* determines the patient's out of pocket cost for the requested pharmacy and potentially other pharmacy options
* determines if alternative medications are available and identifies coverage and cost for those
* returns the gathered information to requester

*Example:* <a href="Bundle-rtpbc-bundle-response-03-w-header.html">Bundled RTPBC response from payer/PBM</a>

### Content when submitting to a medication pricing source
#### *Request content*
The patient application submits a request containing...
* basic patient identifying information
* identification of the pricing source
* information from the prescription for which pricing is desired
* the patient's location and preferred pharmacy

#### *Response content*
The responder... 
* determines pricing for the requested pharmacy and potentially other nearby pharmacies, including discounts associated with coupons or memberships
* returns the gathered information to requester


### Resources used in the exchange
The consumer RTPBC request and response are accomplished using FHIR **Claim** and **ClaimResponse** resources in a "predetermination" (what-if) mode. Other FHIR&reg; resources support the exchange by fleshing out patient, prescription, pharmacy and coverage information needed to determine accurate cost and coverage. An OperationOutcome communicates exception situations where a ClaimResponse cannot be returned.

<div><p>
  <img src="high-level-rtpbc-fhir-resource-mapping.png" style="float:none">  
    </p>
</div>

Below are resources profiled for use in this implementation guide:

**[Claim](StructureDefinition-rtpbc-request-claim.html)** - Represents the RTPBC request. Uses the *predetermination* Claim.use mode  

**[ClaimResponse](StructureDefinition-rtpbc-response-claimresponse.html)** - Represents the RTPBC response

**[Patient](StructureDefinition-rtpbc-patient.html)** - Conveys the patient information needed for the exchange

**[Coverage](StructureDefinition-rtpbc-coverage.html)** - Conveys the patient's pharmacy benefit coverage IDs 

**[MedicationRequest](StructureDefinition-rtpbc-medicationrequest.html)** - Conveys the needed prescription information (a subset of what is present in a full prescription)

**[Organization](StructureDefinition-rtpbc-pharmacy-organization.html) *(Pharmacy)*** - Conveys pharmacy information needed for the exchange (based on the US Core Organization profile)

Note: Prescriber information is conveyed using the US Core Practitioner profile.


### Consumer vs Provider RTPBC content

The consumer Real-time Prescription Benefit Check (RTPBC) profile is an adaptation of the existing NCPDP Real-time Prescription Benefit (RTPB) standard which was designed for use in provider systems. That specification includes content such as drug utilization review (DUR) alerts and other information to inform a provider's prescribing process.
<br>In contrast, this patient-focused version of RTPBC aims to include only the coverage and cost information that is useful and meaningful to patients.
<br>

#### Why a dedicated consumer-focused RTPBC solution?

The aim of this implementation guide is to provide the information a patient needs to understand how their prescription will be covered by their insurance, and the out-of-pocket costs they might face—whether they use their insurance or if they choose to pay cash.

Focusing on the consumer's needs brings additional information and participants into scope, such as real-world cash price comparisons from pricing source entities, and discounts available to the patient through manufacturer programs.

The consumer focus also sets a different frame for the information to be returned by an insurer. For example, differences in copay costs between nearby in-network and out-of-network pharmacies become a high priority, and characterizing coverage restrictions and limits in a way that is clear and meaningful to a typical patient becomes essential.

The consumer-focused RTPBC IG establishes a vehicle for this information exchange that can evolve independently over time to best meet the needs of the patient.

#### Information that is out of scope of the consumer-focused exchange

In line with the goals and audience of this exchange, response information was either included or excluded from the specification based on whether it represents coverage or cost information relevant to the patient.

For example, in the primary consumer use case, the patient's medication has already been prescribed and the practitioner has already considered potential contraindications and other factors--ultimately deciding to move ahead with the therapy. Because Consumer RTPBC does not seek to inform the prescribing decision, but instead provide the consumer with cost and coverage information after that decision is made, drug utilization review (DUR) and restricted opioid prescriber information is not included in the response.

Likewise, because the patient is the user of this exchange's information, the response does not return "cost to plan" data returned by other standards to be considered during the prescribing process.

Future versions of the guide will reflect feedback from implementers, and content will likely evolve over time.

#### Consumer vs. Provider RTPBC content comparison

The table below summarizes the structure and content of the NCPDP real-time pharmacy benefit check transactions, on which consumer RTPBC is based, and which of those are pertinent in the consumer version.

* The element names, optionality and notes refer to the NCPDP transactions
* The Consumer Facing column indicates the content carried over to the consumer version described in this implementation guide.

<br>

<div><p>
  <img src="high-level-content-view-table.png" style="float:none">  
    </p>
</div>

<br><br>

[Next Page](Submission_method.html)