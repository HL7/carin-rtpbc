---
title: Content illustration - RTPBC response
layout: default
active: Content illustration - RTPBC response
---

[Previous Page](Content_illustration_-_RTPBC_request.html)

### Illustration of RTPBC request content
*(see XML / JSON in Other menu, rtpbc-bundle-response-03)*

**Notes**
* The RTPBC Bundle contains the 'response' (the ClaimResponse resource) and supporting resources 
	* the mandatory Patient resource
	* pharmacy Organization resources reflecting alternative pharmacy options identified by the processor
* The .item contains patient costs for the requested drug and pharmacy combination
* Zero or more .addItem composites hold alternatives identified by the processor (e.g., requested drug at a different pharmacy, a different drug at the requested pharmacy, or a different drug at a different pharmacy)
* Coverage summary information (e.g., Covered, Covered but requiring PA) is returned in the .processNote element - linked to the particular item using the processNote.number field

<br/>

<div><img src="https://www.frankmckinney.com/carin-rtpbc/rtpbc-bundle-response-03-1-bundle.png" alt="bundle"></div>

<div><img src="https://www.frankmckinney.com/carin-rtpbc/rtpbc-bundle-response-03-2-message-header.png" alt="messageheader"></div>

<div><img src="https://www.frankmckinney.com/carin-rtpbc/rtpbc-bundle-response-03-3-claim-response.png" alt="claimresponse"></div>

<div><img src="https://www.frankmckinney.com/carin-rtpbc/rtpbc-bundle-response-03-4-patient.png" alt="patient"></div>

<div><img src="https://www.frankmckinney.com/carin-rtpbc/rtpbc-bundle-response-03-5-organization-pharmacy.png" alt="organization-pharmacy"></div>

<br/>


[Next Page](Submit_operation.html)