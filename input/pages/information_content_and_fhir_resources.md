[Previous Page](use_cases.html)

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
<br/>**[Claim](StructureDefinition-rtpbc-request-claim.html)** - Represents the RTPBC request. Uses the *predetermination* Claim.use mode  

**[ClaimResponse](StructureDefinition-rtpbc-response-claimresponse.html)** - Represents the RTPBC response

**[Patient](StructureDefinition-rtpbc-patient.html)** - Conveys the patient information needed for the exchange

**[Coverage](StructureDefinition-rtpbc-coverage.html)** - Conveys the patient's pharmacy benefit coverage IDs 

**[MedicationRequest](StructureDefinition-rtpbc-medicationrequest.html)** - Conveys the needed prescription information (a subset of what is present in a full prescription)

**[Organization (Pharmacy)](StructureDefinition-rtpbc-pharmacy-organization.html) ** - Conveys pharmacy information needed for the exchange (based on the US Core Organization profile)

**Practitioner** - Prescriber information is conveyed using the US Core Practitioner profile.


<br><br>

[Next Page](business_rules.html)
