<p class="stu-note"> The STU2 version of the Consumer RTPBC guide expands information that clients can retrieve from a patient's insurer, adds a request format that omits personally-identifiable information for data sources that don't require patient specifics, adds optional discount card adjudication info to the responses, provides additional implementation guidance, and refines other aspects based on implementer feedback,</p>

<p></p>

<p class="new-content">Below is a placeholder containing the text that will be incorporated into a standard Plain Language Description widget.</p>

<p></p>

This standard enables patients to learn about costs, insurance coverage and other related information for medications they've been prescribed. The guide defines how a consumer-facing application can interact with the patient's insurer and other data sources using FHIR to inform the patient of out-of-pocket costs, coverage restrictions, less expensive drug or pharmacy alternatives, cash discount pricing and other options to support their decision-making.

Consumer Real-Time Pharmacy Benefit Check (RTPBC) leverages capabilities and terminology already in use by US pharmacy stakeholders to minimize implementation obstacles and to ensure that the patient receives information that's accurate and consistent with what they'll encounter at the pharmacy.

<p></p>

### Overview

<p class="modified-content">This wording of this section has been expanded. <i>Modifications are italicized.</i></p> 

This is a guide for implementing a *consumer-focused Real-time Pharmacy Benefit Check* (RTPBC) process using HL7 FHIR&reg;.

Using RTPBC, a patient can learn the cost, insurance coverage _and other information_ related to medications they've been prescribed. Specifically... 
* how a medication will be covered by their insurance, including out of pocket costs and any coverage restrictions or requirements that might apply
* _cash pricing and_ discounts available for the medication
* _availability of financial assistance or other support._

Consumer RTPBC _adapts_ the predetermination process supported by the  FHIR&reg; Claim and ClaimResponse resources _to request patient-specific medication coverage information from the insurer and cash pricing, discount cards and supporting information from other data sources_. Accompanying FHIR&reg; resources carry related information including patient and insurance coverage details, medication, prescriber and preferred pharmacy. A request format that omits personally-identifiable information is also included for data sources that don't require patient specifics.

Where possible, the profile leverages _capabilities and_ terminology currently used in US pharmacy _stakeholders_, to minimize implementation obstacles _and to ensure that the patient receives information that's accurate and consistent with what they'll encounter at the pharmacy_

<p></p>


### Scope of this guide
<p class="modified-content">The following section has been adjusted. <i>Modifications are italicized.</i></p> 

**Consumer RTPBC is intended to be used...**

* in the United States (as it reflects unique US pharmacy insurance roles and conventions)
* for medications that are covered under the *pharmacy benefit* portion of the patient's health insurance, which typically excludes medications administered during hospital care or as part of medical procedures
* for commercially available medication products that are not compounded at the pharmacy. (Support for compounds could potentially be added later)

**Relationship to the NCPDP provider-focused RTPBC transactions**

_The consumer RTPBC profile seeks to provide a patients with coverage and cost information that's consistent with information made available to their provider through the NCPDP Real Time Prescription Benefit (RTPB) standard._ 

_Because this specification focuses on what's most useful and meaningful to patients,_ certain content in the provider-centric NCPDP RTPBC standard is not included here. (See <a href="consumer_vs_provider_rtpbc.html">Consumer vs provider RTPBC</a> for a content comparison.)

**Related information flows outside of consumer RTPBC**

The patient application might gather related information before submitting the consumer RTPBC request, such as prescription information or insurance eligibility. These exchanges are outside the scope of this guide.

**Support for addresses outside the US**

This implementation guide supports military and Canadian addresses for patients and pharmacies, in order to be consistent with other US pharmacy benefit processes. Specifically, the guide enables use of Canada province codes and military 'state' codes (e.g., AE for Armed Forces Europe).
<br>

### Content and Organization
<p class="new-content">This section is new in STU2</p>

The guide is organized into the following sections:

- [Use Case Overview](use_cases.html) describes the RTPBC use case, participants and high-level exchange flows.
- [Information Content](information_content_and_fhir_resources.html) describes what's in the RTPBC request and response.
- [Business Rules](business_rules.html) highlights non-technical content and behavior expectations for requesters and responders.
- [Submission Method](submission_method.html) provides key points about the IG's use of FHIR messaging.
- [Error Handling](error_handling.html) sets expectations on reporting technical and business response errors.
- [Security](security.html) provides direction on use of SMART on FHIR to secure RTPBC exchanges.
- [Provider vs Consumer RTPBC](consumer_vs_provider_rtpbc.html) provides a comparison of this guide to provider-facing messaging defined in the NCPDP RTPB standard.
- [Artifacts](artifacts.html) contains the FHIR profiles and other artifacts defined in this IG.

### Authors

<table>
<tbody>
<tr>
<td colspan="2">HL7 Pharmacy Workgroup</td>
</tr>
<tr>
<td colspan="2">HL7 Financial Management Workgroup</td>
</tr>
<tr>
<td>Frank McKinney</td>
<td><a href="mailto:fm@frankmckinney.com">fm@frankmckinney.com</a></td>
</tr>
</tbody>
</table>

<p></p>

### Dependencies
{% lang-fragment dependency-table.xhtml %}

### Cross Version Analysis
{% lang-fragment cross-version-analysis.xhtml %}

### Global Profiles
{% lang-fragment globals-table.xhtml %}

### IP Statements
{% lang-fragment ip-statements.xhtml %}

- This guide incorporates terminology from NCPDP,  a not-for-profit, multi-stakeholder forum for developing and promoting industry standards and business solutions that improve patient safety and health outcomes, while also decreasing costs. National Council for Prescription Drugs Programs, Inc. (NCPDP) publications are owned by NCPDP, 9240 East Raintree Drive Scottsdale, AZ 85260, and protected by the copyright laws of the United States. 17 U.S.C. §101, et. seq. https://standards.ncpdp.org/Access-to-Standards.aspx. **Usage:** [Reject Code](ValueSet-rtpbc-error-code.html), [Pharmacy Type](ValueSet-rtpbc-pharmacy-type.html), [Formulary Status](ValueSet-rtpbc-formulary-status.html)

<p></p>

### Expansion Parameters
{% lang-fragment expansion-params.xhtml %}

<p></p>
