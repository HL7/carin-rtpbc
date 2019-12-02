---
title: Use cases
layout: default
active: Use cases
---


The goal of the consumer-focused real-time pharmacy benefit check (consumer RTPBC) is to inform a patient of the cost and insurance coverage related to medications they've been prescribed. This involves two key aspects:
* Enable the patient to find out how their medications will be covered by their insurance, including out of pocket costs and any coverage restrictions or requirements that might apply
* Help the patient discover discount pricing available for the medication. 

<br>

At a high level, the process looks like this...
 
<div><img src="https://www.frankmckinney.com/carin-rtpbc/basic-info-flow.png" alt="basic information flow"></div><br>

***The stakeholders...***
* the **patient,** who wishes to understand how their medication is covered by their insurance: their out of pocket cost, restrictions, and pharmacy options
* the **consumer app** that submits the RTPBC request to the payer, and interprets the response for the patient
* the patient's **insurer or agent** that processes the RTPBC request and returns a response containing pricing, coverage restrictions, pharmacy options for the requested drug and alternative medications (typically the pharmacy benefit manager that handles the patient's prescription benefit) 
* an information source providing discount medication pricing 

***In the request...***
*  the patient's app gathers information about the prescription... entered by the patient or imported from another source
*  the patient provides coverage information from their insurance card, or the app retrieves it using an eligibility service (outside the scope of this guide)
*  the app packages up the patient, coverage, prescription and preferred pharmacy information in FHIR resources and submits them to the patient's insurer

***The insurer...***
*  determines the patient cost and coverage details for the requested pharmacy and potentially for other pharmacy options--such as a mail service pharmacy
*  also checks for preferred alternative medications with better coverage under the patient's plan, and returns cost, coverage and pharmacy options for those as well

***The discount pricing provider...***
*  determines the price for the requested medication and pharmacy combination and other medication/pharmacy options
*  determines whether a discount coupon is available for each option

***The patient's app...***
*  interprets and presents the information in an understandable way, possibly presenting insurance coverage alongside cash or discount pricing gathered from other sources
*  ***using the gathered information,*** the patient can learn whether the drug is covered, compare insurance out of pocket costs between pharmacies--and can also compare to cash prices and discount options gathered by their app.

***If the insurer or discount provider cannot complete processing of the request...***
*  it returns information about the exception that occurred. *See <a href="Error_handling.html">the Error Handling page</a>*

<br>

#### Related information flows outside of consumer RTPBC
The patient's app might gather related information (e.g., medication information or insurance eligibility) before submitting the consumer RTPBC request. 
*These exchanges are outside the scope of this guide.*
<br>
<div><img src="https://www.frankmckinney.com/carin-rtpbc/related-info-flows.png" alt="related information flows"></div>

<br><br>



[Next Page](Information_content_and_FHIR_resources.html)