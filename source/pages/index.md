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

This is a guide for implementing the **consumer-focused real-time pharmacy benefit check** (consumer RTPBC) using FHIR R4.

Using RTPBC, a patient can learn the cost and insurance coverage related to medications they've been prescribed. Specifically... 
* how a medication will be covered by their insurance, including out of pocket costs and any coverage restrictions or requirements that might apply
* discount pricing available for the medication. 

Consumer RTPBC leverages the predetermination process supported by the Claim and ClaimResponse FHIR resources. Accompanying resources carry information that identifies the patient and their insurance coverage, prescription information and the preferred pharmacy (Patient, Coverage, MedicationRequest, Practitioner and Organization). OperationOutcome is used to communicate exceptions.

The profile adapts terminology used in US pharmacy benefit processing, to minimize implementation obstacles for stakeholders who operate in that domain.

<br/>

*This guide is currently in development *

<br/>


### Scope of this guide
**Consumer RTPBC is intended to be used...**
* in the United States (as it reflects unique US pharmacy insurance roles and conventions)
* for medications that are covered under the *pharmacy benefit* portion of the patient's health insurance, which typically excludes medications administered during hospital care or as part of medical procedures
* for commercially available medication products that are not compounded at the pharmacy. *(Support for compounds could potentially be added later)*

***Relationship to the NCPDP provider-focused RTPBC transactions*** <br/>
This initial release of the consumer RTPBC profile seeks to include the coverage and cost information that's the most useful and meaningful to patients. As a result, certain content in the provider-centric NCPDP RTPBC standard is not included here. Additional content could potentially be added in a later effort. (See <a href="Consumer_vs_provider_RTPBC.html">Consumer vs provider RTPBC</a> for content comparison.)

***Related information flows outside of consumer RTPBC*** <br/>
The patient application might gather related information before submitting the consumer RTPBC request, such as prescription information or insurance eligibility. *These exchanges are outside the scope of this guide.*

<br>

### Feedback
This implementation guide is the result of work sponsored by the CARIN Alliance, whose goal is to advance the ability for consumers and their authorized caregivers to easily get, use, and share their digital health information when, where, and how they want to achieve their goals.

Comments and suggestions are welcome on our Zulip stream...
https://chat.fhir.org/#narrow/stream/208660-CARIN-Benefit.20Check.20IG

* or send a note to fm@frankmckinney.com

<br/>

### Change log

**0.1.10 (This version):** Added code system with new coupon coverage-class concepts and new value set to add them to the current HL7 coverage-class values. Added placeholder code systems for multiple NCPDP and other code/identifier systems for which HL7/FHIR URLs are not available--to be replaced with HL7-maintained URLs or NamingSystem resources within this IG (when supported by the publishing process); see Terminology page. Added state/province and constrained country value sets and related element bindings in Patient and pharmacy Organization profiles. Added currency bindings in ClaimResponse cost elements. Refined content and layout on terminology, code system, value set and naming system pages. Refined business error content in ClaimResponse and clarified related guidance in the Error Handling page. Refined content on the Consumer vs Provider RTPBC page. 

**0.1.09:** Added message definitions for the request and response. Added an Error Handling section in the Guidance menu, and placeholder 'error code' CodeSystem and ValueSet resources (to be refined/replaced after stakeholder discussion). 

**0.1.08:** Added discussion of submission/response using FHIR messaging to the Submission Method page (renamed from Submit Operation). Added examples of submission / response using messaging. Added an extension (isAlternative) to characterize ClaimResponse.addItem composites as independent alternative fulfillment options (based on feedback from the FM WG). Added a Security page under Guidance, to be further fleshed out through stakeholder discussion.

**0.1.07:** Moved content illustration content to Examples section. (Changed name of Other menu item to Examples). Adjusted Submit Operation to remove the MessageHeader resource from the submitted Bundle, based on discussion with Financial Mgmt WG. Likewise adjusted the Bundle examples and illustrations. Clarified the high-level resource map illustration to match current approach. 

**0.1.06:** Added the Coverage resource into the request content illustration (inadvertently left it out earlier).

**0.1.05:** Added MedicationRequest.reported as a Must Support element to indicate whether the prescription information is being reported by the patient or other source (versus being the actual original prescription resource). Added content illustrations to provide business-level discussion material.

**0.1.04:** Addressed broken page links, made small profile adjustments in ClaimResponse.

**0.1.03:** Added submit operation and parameter details. Added bundled version of request and response. Corrected version using Claim w/contained resources (for discussion). Added separate Patient, Coverage, MedicationRequest, Organization, MessageHeader example resources.

**0.1.02 :** Loosened element cardinality restrictions in the Claim profile based on input from reviewers. General narrative cleanup.

**0.1.01:** Adjusted background and use case material to also reflect RTPBC communication between the patient's application and discount medication pricing sources--which augments information retrieved from the patient's insurer. In process of reorganizing content to a more intuitive arrangement. 

**0.1.00:** Initial resources and narrative content.

<br/>

### Known issues and to-dos
* The example, rtpbc-claim-with-contained-03, omits the MedicationRequest; it is being lost when importing the resource to Trifolia. Trying to figure out...


<br/>

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
<tr>
<td>Frank McKinney</td>
<td><a href="mailto:fm@frankmckinney.com">fm@frankmckinney.com</a></td>
</tr>
</tbody>
</table>


