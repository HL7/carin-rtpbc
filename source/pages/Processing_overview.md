---
title: Processing overview
layout: default
active: Processing overview
---

[Previous Page](High-level_FHIR_resource_mapping.html)

### The consumer RTPBC information flow
**Consumer real-time prescription benefit check (RTPBC)** is an exchange between a consumer application used by a patient and the party that manages the pharmacy benefit portion of the patient's health insurance.
  
<div><img src="https://www.frankmckinney.com/carin-rtpbc/basic-info-flow.png" alt="basic information flow"></div><br>

  
**Request content**
The patient application submits a request containing...
* basic patient identifying information
* payer and coverage identifiers
* information from the prescription for which coverage and cost is desired
* the patient's preferred pharmacy
<br><br>

**Response content**
The responder... 
* locates the patient's record and coverage details
* determines the patient's out of pocket cost for the requested pharmacy and potentially other pharmacy options
* determines if alternative medications are available and identifies coverage and cost for those
* returns the gathered information to requester
<br><br>


### Related information flows outside of consumer RTPBC
The patient's app might gather related information before or after submitting the consumer RTPBC request.
*These exchanges are outside the scope of this guide.*
<br>
<div><img src="https://www.frankmckinney.com/carin-rtpbc/related-info-flows.png" alt="related information flows"></div>

<br>

### Resource used in the exchange
The consumer RTPBC request and response are accomplished using FHIR **Claim** and **ClaimResponse** resources in a "predetermination" (what-if) mode. Other FHIR resources support the exchange by fleshing out patient, prescription, pharmacy and coverage information needed to determine accurate cost and coverage.
Below are profiles constraining those resources for this purpose:

* **Claim** - Represents the RTPBC request. Uses the *predetermination* Claim.use mode  (CARINRTPBCClaim)
* **ClaimResponse** - Represents the RTPBC response  (CARINRTPBCClaimResponse)
* **Patient** - Conveys the patient information needed for the exchange  (CARINRTPBCPatient)
* **MedicationRequest** - Conveys the needed prescription information (a subset of what is present in a full prescription)  (CARINRTPBCMedicationRequest)
* **Practitioner** - Conveys the prescriber information needed for the exchange  (CARINRTPBCPractitioner)
* **Organization *for Pharmacy*** - Conveys pharmacy information needed for the exchange (CARINRTPBCPharmacyOrganization)
* **Organization *for Payer*** - Represents the patient's payer in the exchange    **TBD - THIS MIGHT NOT BE NEEDED... since we only need a payer ID**
* **Coverage** - Conveys the pharmacy benefit coverage IDs needed for the exchange  (CARINRTPBCCoverage)
* **OperationOutcome** - Communicates exception situations where a ClaimResponse cannot be returned  (CARINRTPBCOperationOutcome)

The need for additional resource profiles may be identified as work progresses.


[Next Page](Terminology_overview.html)