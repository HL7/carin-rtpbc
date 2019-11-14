---
title: Information content and FHIR resources
layout: default
active: Information content and FHIR resources
---

[Previous Page](Use_cases.html)

### Consumer real-time prescription benefit check (RTPBC) information content
The RTPBC process involves a request from a consumer application used by a patient to either (a) the party that manages the pharmacy benefit portion of the patient's health insurance or (b) a party that serves as a source for typical and discount medication pricing information. 

<br>

### Exchange with the patient's insurer
#### *Request content*
The patient application submits a request containing...
* basic patient identifying information
* payer and coverage identifiers
* information from the prescription for which coverage and cost is desired
* the patient's preferred pharmacy

*Example:* <a href="Bundle-rtpbc-bundle-request-03.html">Bundled RTPBC request</a>


#### *Response content*
The responder... 
* locates the patient's record and coverage details
* determines the patient's out of pocket cost for the requested pharmacy and potentially other pharmacy options
* determines if alternative medications are available and identifies coverage and cost for those
* returns the gathered information to requester

*Example:* <a href="Bundle-rtpbc-bundle-response-03.html">Bundled RTPBC response from payer/PBM</a>

<br>

### Exchange with a medication pricing source
In this variation, the request and response information is a subset of that in the exchange with the patient's insurer... omitting the patient identifying information on the request, and omitting the coverage information on the response. 
#### *Request content*
The patient application submits a request containing...
* information from the prescription for which pricing is desired
* the patient's location and preferred pharmacy
<br>

#### *Response content*
The responder... 
* determines pricing for the requested pharmacy and potentially other nearby pharmacies
* returns the gathered information to requester
* optionally returns coupon information when available

<br>
<br>


### Resources used in the exchange
The consumer RTPBC request and response are accomplished using FHIR **Claim** and **ClaimResponse** resources in a "predetermination" (what-if) mode. Other FHIR resources support the exchange by fleshing out patient, prescription, pharmacy and coverage information needed to determine accurate cost and coverage.


<div><img src="https://www.frankmckinney.com/carin-rtpbc/high-level-rtpbc-fhir-resource-mapping.png" alt="related information flows"></div>

<br/>

Below are profiles constraining those resources for this purpose:

* **Claim** - Represents the RTPBC request. Uses the *predetermination* Claim.use mode
* **ClaimResponse** - Represents the RTPBC response
* **Patient** - Conveys the patient information needed for the exchange
* **MedicationRequest** - Conveys the needed prescription information (a subset of what is present in a full prescription)
* **Practitioner** - Conveys the prescriber information needed for the exchange
* **Organization *(Pharmacy)*** - Conveys pharmacy information needed for the exchange 
* **Coverage** - *Request:* Conveys the pharmacy benefit coverage IDs needed for the exchange. *Response:* Optionally contains discount drug coupon information when the request is processed by a discount pricing source 
* **OperationOutcome** - Communicates exception situations where a ClaimResponse cannot be returned 

The need for additional resource profiles may be identified as work progresses.


[Next Page](Submit_operation.html)