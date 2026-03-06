<p class="stu-note">
	The STU2 version of the Consumer RTPBC guide introduces a non-PHI request for submission to data services that do not need patient-identifiable infomration to provide a response, </p>

<p></p>

The real-time pharmacy benefit check (RTPBC) process involves a request from a consumer application used by a patient to either (a) the party that manages the pharmacy benefit portion of the patient's health insurance or (b) a party that serves as a source for typical and discount medication pricing information. 

### Content when submitting to the patient's insurer
#### *Request content*
The patient application submits a request containing...
* basic patient identifying information
* payer and coverage identifiers
* information from the prescription for which coverage and cost is desired
* the patient's preferred pharmacy

*Example:* [RTPBC request bundle](Bundle-rtpbc-bundle-request-03.html)

#### *Response content*
The responder... 
* locates the patient's record and coverage details
* determines the patient's out of pocket cost for the requested pharmacy and potentially other pharmacy options
* determines if alternative medications are available and identifies coverage and cost for those
* returns the gathered information to requester

*Example:* [RTPBC response bundle](Bundle-rtpbc-bundle-response-03.html)

<p></p>

### Content when _requesting non-patient-specific info such as cash pricing_
<p class="modified-content">This section was modified to use a request format that contains no patient-identifiable information.</p> 

#### *Request content*
The patient application submits a request containing...
* non-patient-identifiable information from the prescription: medication and quantity
* the patient's preferred pharmacy or location (ZIP Code) of the pharmacy
* non-patient-identifiable coverage information: insurance type

*Profile:* [RTPBC Request Bundle - Non-PHI](StructureDefinition-rtpbc-request-bundle-non-phi.html)

*Example:* [Non-PHI RTPBC request](Bundle-rtpbc-bundle-request-non-phi-1.html)

#### Response content
The responder... 
* determines:
  * pricing for the requested pharmacy and potentially other nearby pharmacies, including discounts associated with coupons or memberships
* returns the gathered information to requester

*Profile:* [RTPBC Response Bundle - Non-PHI](StructureDefinition-rtpbc-response-bundle-non-phi.html)

*Example:* [RTPBC response from a pricing source](Bundle-rtpbc-bundle-response-price-source.html)


### Resources used in the exchange
<p class="modified-content">This section was modified to add the content of the non-PHI request and response</p> 

The consumer RTPBC request and response are accomplished using FHIR **Claim** and **ClaimResponse** resources in a "predetermination" (what-if) mode. Other FHIR&reg; resources support the exchange by fleshing out patient, prescription, pharmacy and coverage information needed to determine accurate cost and coverage. An OperationOutcome communicates exception situations where a ClaimResponse cannot be returned.

<div><p>
  <img src="high-level-rtpbc-fhir-resource-mapping.png" style="float:none">  
</p></div>

<br/>**[Claim](StructureDefinition-rtpbc-request-claim.html)** - Represents the RTPBC request. Uses the *predetermination* Claim.use mode  

**[ClaimResponse](StructureDefinition-rtpbc-response-claimresponse.html)** - Represents the RTPBC response

**[Patient](StructureDefinition-rtpbc-patient.html)** - Conveys the patient information needed for the exchange

**[Coverage](StructureDefinition-rtpbc-coverage.html)** - In the request, conveys the patient's pharmacy benefit coverage IDs. In the response, contains information associated with a discount card, such as BIN/PCN, used by the pharmacy to apply the discount

**[MedicationRequest](StructureDefinition-rtpbc-medicationrequest.html)** - Conveys the needed prescription information (a subset of what is present in a full prescription)

**[Organization (Pharmacy)](StructureDefinition-rtpbc-pharmacy-organization.html)** - Conveys pharmacy information needed for the exchange (based on the US Core Organization profile)

**Practitioner** - Prescriber information is conveyed using the US Core Practitioner profile.


<br><br>

[Next Page](business_rules.html)