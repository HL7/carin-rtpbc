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
### Overview

This is a guide for implementing a *consumer-focused Real-time Pharmacy Benefit Check* (RTPBC) process using HL7 FHIR&reg; R4.

Using RTPBC, a patient can learn the cost and insurance coverage related to medications they've been prescribed. Specifically... 
* how a medication will be covered by their insurance, including out of pocket costs and any coverage restrictions or requirements that might apply
* discount pricing available for the medication. 

Consumer RTPBC leverages the predetermination process supported by the Claim and ClaimResponse FHIR&reg; resources. Accompanying resources carry information that identifies the patient and their insurance coverage, prescription information and the preferred pharmacy (Patient, Coverage, MedicationRequest, Practitioner and Organization). OperationOutcome is used to communicate exceptions.

Where possible, the profile leverages terminology currently used in US pharmacy benefit processing, to minimize implementation obstacles for stakeholders who operate in that domain.
<br>

### Scope of this guide
**Consumer RTPBC is intended to be used...**

* in the United States (as it reflects unique US pharmacy insurance roles and conventions)
* for medications that are covered under the *pharmacy benefit* portion of the patient's health insurance, which typically excludes medications administered during hospital care or as part of medical procedures
* for commercially available medication products that are not compounded at the pharmacy. *(Support for compounds could potentially be added later)*

**Relationship to the NCPDP provider-focused RTPBC transactions**

This initial release of the consumer RTPBC profile seeks to include the coverage and cost information that's the most useful and meaningful to patients. As a result, certain content in the provider-centric NCPDP RTPBC standard is not included here. Additional content could potentially be added in a later effort. (See <a href="Consumer_vs_provider_RTPBC.html">Consumer vs provider RTPBC</a> for content comparison.)

**Related information flows outside of consumer RTPBC**

The patient application might gather related information before submitting the consumer RTPBC request, such as prescription information or insurance eligibility. *These exchanges are outside the scope of this guide.*
<br>

### Feedback
This implementation guide is the result of work sponsored by the CARIN Alliance, whose goal is to advance the ability for consumers and their authorized caregivers to easily get, use, and share their digital health information when, where, and how they want to achieve their goals.

Comments and suggestions are welcome on our <a href="https://chat.fhir.org/#narrow/stream/208660-CARIN-Benefit.20Check.20IG">Zulip stream</a> or send a note to <a href="mailto:fm@frankmckinney.com">the author</a>
<br>

### Authors

<table>
<tbody>
<tr>
<td>HL7 Pharmacy Workgroup</td>
<td></td>
</tr>
<tr>
<td>HL7 Financial Management Workgroup</td>
<td></td>
</tr>
<tr>
<td>Frank McKinney</td>
<td><a href="mailto:fm@frankmckinney.com">fm@frankmckinney.com</a></td>
</tr>
</tbody>
</table>

<br>
