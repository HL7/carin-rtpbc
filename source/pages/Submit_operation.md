---
title: Submit operation
layout: default
active: Submit operation
---

[Previous Page](Information_content_and_FHIR_resources.html)

### Submitting the Real-time Pharmacy Benefit Check (RTBPC) request
#### Operation
The RTPBC request is submitted using the $submit operation on the processor's claim server...
* URL: [base]/Claim/$submit

#### Submit parameter
The operation has a single FHIR resource input parameter consisting of a **Bundle** containing the Claim resource and referenced supporting resources.

#### Request parameter bundle
* Claim - The main RTPBC request
* Patient - Patient-identifying information
* Coverage - Identifiers for the patient's pharmacy insurance
* MedicationRequest - Key prescription information
* Practitioner - Prescriber-identifying information
* Organization - Identifying information for the preferred pharmacy


#### Response bundle
* ClaimResponse - The main RTPBC response--containing pricing and coverage info
* Patient - Patient-identifying information echoed back from the request
* Coverage - When the processor is a discount pricing source, a "key" to coupon information may be returned in a Coverage resource reference by the Claim.insurance element
* Organization - Identifying information for alternative pharmacies priced in the response. (0 or more)

*Note: The Coverage, MedicationRequest, Practitioner and submitted pharmacy Organization resources are not echoed back in the response.*


[Next Page](Consumer_vs_provider_RTPBC.html)