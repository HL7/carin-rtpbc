<div xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/xhtml ../../schema/fhir-xhtml.xsd" xmlns="http://www.w3.org/1999/xhtml">
<blockquote class="stu-note">
	The STU2 version of the Consumer RTPBC guide expands information that clients can retrieve from a patient's insurer and other data sources, provides additional guidance, and refines other aspects based on implementer feedback, 
</blockquote>
</div>

<p></p>

<p class="new-content">Where possible, new content is highlighted with green text and background. This highlighting will be removed prior to publication.</p>

<p></p>

<p class="modified-content">Sections with additions or adjustments are noted in yellow.</p>

<p></p>
<p></p>
_** To do: Add plain language description. **_
<p></p>


### Overview
<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

This is a guide for implementing a *consumer-focused Real-time Pharmacy Benefit Check* (RTPBC) process using HL7 FHIR&reg; R4.

Using RTPBC, a patient can learn the cost, insurance coverage _and other information_ related to medications they've been prescribed. Specifically... 
* how a medication will be covered by their insurance, including out of pocket costs and any coverage restrictions or requirements that might apply
* _cash pricing and_ discounts available for the medication
* _availability of financial assistance or other support._

Consumer RTPBC leverages the predetermination process supported by the Claim and ClaimResponse FHIR&reg; resources. Accompanying resources carry information that identifies the patient and their insurance coverage, prescription information and the preferred pharmacy (Patient, Coverage, MedicationRequest, Practitioner and Organization). OperationOutcome is used to communicate exceptions.

Where possible, the profile leverages terminology currently used in US pharmacy benefit processing, to minimize implementation obstacles for stakeholders who operate in that domain.
<br>

### Scope of this guide
**Consumer RTPBC is intended to be used...**

* in the United States (as it reflects unique US pharmacy insurance roles and conventions)
* for medications that are covered under the *pharmacy benefit* portion of the patient's health insurance, which typically excludes medications administered during hospital care or as part of medical procedures
* for commercially available medication products that are not compounded at the pharmacy. *(Support for compounds could potentially be added later)*

**Relationship to the NCPDP provider-focused RTPBC transactions**

<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

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

<p></p>

### Dependencies
{% lang-fragment dependency-table.xhtml %}

### Cross Version Analysis
{% lang-fragment cross-version-analysis.xhtml %}

### Global Profiles
{% lang-fragment globals-table.xhtml %}

### IP Statements
{% lang-fragment ip-statements.xhtml %}

### Expansion Parameters
{% lang-fragment expansion-params.xhtml %}

<p></p>
