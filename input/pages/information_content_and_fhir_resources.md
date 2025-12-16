[Previous Page](use_cases.html)

<div xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/xhtml ../../schema/fhir-xhtml.xsd" xmlns="http://www.w3.org/1999/xhtml">
<blockquote class="stu-note">
	The STU2 version of the Consumer RTPBC guide introduces a non-PHI request for submission to data services that do not need patient-identifiable infomration to provide a response, 
</blockquote>
</div>

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
<p class="modified-content">This section was modified to use a request format that contains no patient-identifiable information. <i>Modifications are italicized.</i></p> 

#### *Request content*
The patient application submits a request containing...
* _non-patient-identifiable information from the prescription: medication and quantity_
* _the patient's preferred pharmacy or location (ZIP Code) of the pharmacy_
* _non-patient-identifiable coverage information: insurance type_

*Example:* _[Non-PHI RTPBC request](Bundle-rtpbc-bundle-request-non-phi-2.html)_

#### *Response content*
The responder... 
* determines:
  * pricing for the requested pharmacy and potentially other nearby pharmacies, including discounts associated with coupons or memberships
  _* or other medication-related information_
* returns the gathered information to requester

*Example:* _[RTPBC response from a pricing source](rtpbc-bundle-response-price-source)_


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

**[Organization (Pharmacy)](StructureDefinition-rtpbc-pharmacy-organization.html)** - Conveys pharmacy information needed for the exchange (based on the US Core Organization profile)

**Practitioner** - Prescriber information is conveyed using the US Core Practitioner profile.


<br><br>

[Next Page](business_rules.html)