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

This initial release of the consumer RTPBC profile seeks to include the coverage and cost information that's the most useful and meaningful to patients. As a result, certain content in the provider-centric NCPDP RTPBC standard is not included here. Additional content could potentially be added in a later effort. (See <a href="consumer_vs_provider_rtpbc.html">Consumer vs provider RTPBC</a> for content comparison.)

**Related information flows outside of consumer RTPBC**

The patient application might gather related information before submitting the consumer RTPBC request, such as prescription information or insurance eligibility. *These exchanges are outside the scope of this guide.*

**Support for addresses outside the US**

This implementation guide supports military and Canadian addresses for patients and pharmacies, in order to be consistent with other US pharmacy benefit processes. Specifically, the guide enables use of Canada province codes and military 'state' codes (e.g., AE for Armed Forces Europe).

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
