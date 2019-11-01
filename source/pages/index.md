---
title: Implementation Guide Home Page
layout: default
active: home
---

{% include publish-box.html %}

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

### Description

*(Jump to the table of contents...*  Need to fix... ../CARIN-RTPBC/toc.html)

<br>

This is a guide for implementing the **consumer-focused real-time pharmacy benefit check** (consumer RTPBC) using FHIR R4.
Using RTPBC, a patient can learn how their medications will be covered at the pharmacy, including out of pocket costs and any coverage restrictions or requirements that might apply.

<br>

The process looks like this...
 
<div><img src="https://www.frankmckinney.com/carin-rtpbc/basic-info-flow.png" alt="basic information flow"></div><br>

***The stakeholders...***
* the **patient,** who wishes to understand how their medication is covered by their insurance: their out of pocket cost, restrictions, and pharmacy options
* the **consumer app** that submits the RTPBC request to the payer, and interprets the response for the patient
* the patient's **insurer or agent** that processes the RTPBC request and returns a response containing pricing, coverage restrictions, pharmacy options for the requested drug and alternative medications (typically the pharmacy benefit manager that handles the patient's prescription benefit) 
* *(optionally, the patient app may retrieve related information such as cash or discount pricing from other entities. Those parties and exchanges are out of scope of this guide)*

***In the request...***
*  the patient's app gathers information about the prescription... entered by the patient or imported from another source
*  the patient provides coverage information from their insurance card, or the app retrieves it using an eligibility service (outside the scope of this guide)
*  the app packages up the patient, coverage, prescription and preferred pharmacy information in FHIR resources and submits them to the patient's insurer

***The response and its use...***
*  the insurer determines the patient cost and coverage details for the requested pharmacy and potentially for other pharmacy options--such as a mail service pharmacy
*  the insurer also checks for preferred alternative medications with better coverage under the patient's plan, and returns cost, coverage and pharmacy options for those as well
*  the patient's app interprets and presents the information in an understandable way, possibly alongside cash or discount pricing gathered from other sources (outside this guide's scope)
*  ***with the information from the insurer's response,*** the patient can learn whether the drug is covered, compare insurance out of pocket costs between pharmacies--and can also compare to cash prices and discount options gathered by their app.

<br>

### Scope of this guide
Consumer RTPBC is intended to be used...
* in the United States (as it reflects unique US pharmacy insurance roles and conventions)
* for medications that are covered under the *pharmacy benefit* portion of the patient's health insurance, which typically excludes medications administered during hospital care or as part of medical procedures
* for commercially available medication products that are not compounded at the pharmacy. *(Support for compounds could potentially be added later)*

<br>

This initial release of the consumer RTPBC profile seeks to include the coverage and cost information that's the most useful and meaningful to patients. As a result, certain details that are part of the *provider-focused RTPBC standard* are not included here. Additional content could potentially be added in a later effort.

<br>

*Related information flows outside of consumer RTPBC*
The patient's app might gather related information before or after submitting the consumer RTPBC request. *These exchanges are outside the scope of this guide.*

<br>

### Author
This implementation guide is the result of work sponsored by the CARIN Alliance, whose goal is to advance the ability for consumers and their authorized caregivers to easily get, use, and share their digital health information when, where, and how they want to achieve their goals.

<br> 

The guide is currently in development and incomplete. 

<br>

Comments and suggestions are welcome...

* on our Zulip stream...
https://chat.fhir.org/#narrow/stream/208660-CARIN-Benefit.20Check.20IG

* or send a note to fm@frankmckinney.com


<br>

### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 Pharmacy Workgroup</td>
<td></td>
</tr>
</tbody>
</table>


