---
title: FHIR implementation approach
layout: default
active: FHIR implementation approach
---

[Previous Page](CARIN_Initiative_and_Consumer_RTPBC.html)

### High-level FHIR implementation approach
* Consumer RTPBC leverages the predetermination process supported by the FHIR Claim and ClaimResponse resources
* Accompanying resources carrying information to identify the patient and their insurance coverage, prescription information and preferred pharmacy
	* *Patient, Coverage, MedicationRequest, Practitioner, Organization (payer and pharmacy), OperationOutcome (exceptions)*
* The profile adapts terminology used in US pharmacy benefit processing, to minimize implementation obstacles for stakeholders who operate in that domain

<br>

### Adaptation of the provider-focused RTPBC standard
Consumer RTPBC is an adaptation of a provider-to-payer RTPBC standard created by the National Council for Prescription Drug Programs (NDPCP), a standards organization. This guide aims to be compatible with that standard where possible, to aid payers and system developers who are implementing both the provider and consumer variations.

<br>

### US Core
While the guide will be used in the US, characteristics of the consumer RTPBC process suggest that US Core profiles may not be applicable...

* The US Core use case is *accessing patient data*, and conformance requirements are stated in the context of patient information being retrieved from a server. The US Core data requirements are appropriate for that purpose
* The RTPBC context and use case is fundamentally different:
	* The domain of the RTPBC use case is insurance processing versus patient care, and its data requirements derive from function of determining cost and coverage for a medication 
	* In RTPBC, patient information is used solely by the payer to identify the patients insurance records. It not saved by the payer or used after the transaction for care or any other purpose. Likewise, the small amount of prescription data sent in the request is used by the payer to identify the prescribed drug in its system and to understand the quantity to price
	* No party retrieves patient data from a server as occurs in the US Core context

The extent to which this implementation guide will leverage US Core profile components is currently being determined 





[Next Page](Use_Case_and_Scenarios.html)