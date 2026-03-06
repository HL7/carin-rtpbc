### Goals

<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

The _goals_ of the consumer-focused real-time pharmacy benefit check (consumer RTPBC) _are:_
- _informing a patient of insurance coverage related to medications they've been prescribed, including out-of-pocket costs and coverage restrictions_
- _providing information about cash pricing and discounts, as well as other sources of patient support available for the medication._

### Usage context
 The real-time pharmacy benefit check is designed to provide accurate cost information based on the specifics of a patient prescription. Details such as the specific drug name, dose form, strength and quantity must match the prescription exactly in order to receive reliable results.

However, a patient may wish to use the process for a medication they haven't yet been prescribed, for example to understand its cost compared to their current treatment. In that circumstance, the results must be viewed as approximate information that may not reflect their actual cost when their prescriber has ordered a particular product and dosage

<p></p>

### High-Level Flow

<p class="modified-content">The previous version's Use Case Flows section and Related Information Flows section have been combined and reworked below. </p> 


The patient uses a consumer-facing client application to retrieve and view information related to their medications from their insurer, drug discount sources or other related data sources, as illustrated below.

<p></p>

<div><p>
  <img src="related-info-flows.png" style="float:none">  
</p></div>

**Related information flows outside of consumer RTPBC**
The patient's app might gather related information (e.g., medication information or insurance eligibility) before submitting the consumer RTPBC request. 
- See below for how to use a Digital Insurance Card to obtain patient coverage information for submission in an RTPBC request.

<p></p>

### Use Case - Retrieve member-specific insurance coverage

The patient learns how how their medication will be covered by their insurance, including out of pocket costs and any coverage restrictions or requirements that might apply

<div><p>
  <img src="basic-info-flow-insurance.png" style="float:none">  
</p></div>


#### Use case - Retrieve cash discount pricing and other information

The patient discovers discount pricing _or other related information_ available for their medication. 

<div><p>
  <img src="basic-info-flow-other.png" style="float:none">  
</p></div>


###  Omitting personally-identifiable information

<p class="new-content"> New in this version </p>

Retrieving member-specific information from an insurer requires use of the full RTPBC request containing protected health information (PHI) such as patient demographics and insurance details which enable the insurer to locate the specific member coverage on which to base its response.

However, when requesting non-patient-specific information such as cash pricing, the Non-PHI RTPBC request may be used.

<p></p>

### Participants

The actors in RTPBC use cases include:

* the **patient,** who wishes to understand how their medication is covered by their insurance: their out of pocket cost, restrictions, and pharmacy options. Using the gathered information, the patient can learn whether the drug is covered, compare insurance out of pocket costs between pharmacies--and can also compare to cash prices and discount options gathered by their app
* the **consumer app** that submits the RTPBC request to the payer, and interprets the response for the patient
* the patient's **insurer or agent** that processes the RTPBC request and returns a response containing pricing, coverage restrictions, pharmacy options for the requested drug and alternative medications (typically the pharmacy benefit manager that handles the patient's prescription benefit) 
* **other data sources** that can supply cash discount pricing or other information related to the patient's medication. 

#### Consumer App Responsibilities
<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

*  the patient's app gathers information about the prescription... entered by the patient or imported from another source
*  the patient provides coverage information from _their physical insurance card or [CARIN Digital Insurance Card](https://hl7.org/fhir/us/insurance-card)_, or the app retrieves it using an eligibility service
*  _when retrieving patient-specific information such as insurance coverage details,_ the app packages up the patient, coverage, prescription and preferred pharmacy information in HL7 FHIR resources and submits them _using the [RTPBC Request](StructureDefinition-rtpbc-request-bundle.html)_ to the patient's insurer _or other data source_
*  _when retrieving non-patient-specific information, the app supplies_only non-patient-identifiable prescription, pharmacy and insurance information in the [Non-PHI RTPBC Request](StructureDefinition-rtpbc-request-bundle-non-phi.html)_
*  the app interprets and presents the returned information in an understandable way, possibly presenting insurance coverage alongside cash or discount pricing gathered from other sources

#### Insurer Responsibilities 

*  determines the patient cost and coverage details for the requested pharmacy and potentially for other pharmacy options--such as a mail service pharmacy
*  also checks for preferred alternative medications with better coverage under the patient's plan, and returns cost, coverage and pharmacy options for those as well

#### Other Data Source Source Responsibilities
<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

*  determines the price for the requested medication and pharmacy combination and other medication/pharmacy options
*  identifies discounts that apply, related to coupons or memberships
_*  or identifies other medication-related information or services to be presented to the patient_

<p></p>

### Using a Digital Insurance Card to Obtain Patient Coverage Information
#### Background

<p class="new-content">New in this version</p>

The Digital Insurance Card provides standardized insurance identifiers required for [CARIN Real-Time Pharmacy Benefit Check (RTPBC)](https://hl7.org/fhir/us/carin-rtpbc/) transactions. These identifiers are required in order for consumers to perform real-time pharmacy benefit checks in applications of their choosing, as specified in the CARIN RTPBC Implementation Guide.

#### Scenario
A consumer wants to check their pharmacy benefit coverage and medication costs before filling a prescription. The digital insurance card provides the necessary identifiers (member ID, group number, BIN/IIN/PCN) required to submit an RTPBC request through either direct FHIR API access. Consumer application requests access to retrieve the required identifiers from the digital insurance card and upon being granted access by the member, includes those identifiers in an RTPBC request.

#### Actors:

- Consumer
- Consumer App (implementing CARIN RTPBC)
- RTPBC Service (CARIN RTPBC endpoint)

#### Flow:
1. Consumer App extracts member ID, group number, and BIN/IIN/PCN from Coverage resource.
2. Consumer App constructs and submits a CARIN Consumer-Facing Real Time Pharmacy Benefit Check message.
3. RTPBC Service returns formulary and benefit information.
4. Consumer App displays medication costs and coverage to the consumer.

<p></p>
<p></p>



