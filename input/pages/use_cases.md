### Goals

<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

The _goals_ of the consumer-focused real-time pharmacy benefit check (consumer RTPBC) _are:_
- _informing a patient of insurance coverage related to medications they've been prescribed, including out-of-pocket costs and coverage restrictions_
- _providing information about cash pricing and discounts, as well as other sources of patient support available for the medication._

This involves two key aspects:

* **Use case 1:** Enable the patient to find out how their medications will be covered by their insurance, including out of pocket costs and any coverage restrictions or requirements that might apply
* **Use case 2:** Help the patient discover discount pricing _or other related information_ available for the medication. 

_Retrieving insurance member-specific information requires that the full RTPBC request which contains individually-identifiable information such as patient demographics and insurance details which enable the insurer to locate the specific member coverage on which to base its response._

_However, when requesting non-patient-specific information such as cash pricing, the Non-PHI RTPBC request may be used._

  <br/>

### Usage context
 The real-time pharmacy benefit check is designed to provide accurate cost information based on the specifics of a patient prescription. Details such as the specific drug name, dose form, strength and quantity must match the prescription exactly in order to receive reliable results.

However, a patient may wish to use the process for a medication they haven't yet been prescribed, for example to understand its cost compared to their current treatment. In that circumstance, the results must be viewed as approximate information that may not reflect their actual cost when their prescriber has ordered a particular product and dosage

### Use case flows

At a high level, the process looks like this...

<div><p>
  <img src="basic-info-flow.png" style="float:none">  
    </p>
</div>
### Participants

* the **patient,** who wishes to understand how their medication is covered by their insurance: their out of pocket cost, restrictions, and pharmacy options. Using the gathered information, the patient can learn whether the drug is covered, compare insurance out of pocket costs between pharmacies--and can also compare to cash prices and discount options gathered by their app
* the **consumer app** that submits the RTPBC request to the payer, and interprets the response for the patient
* the patient's **insurer or agent** that processes the RTPBC request and returns a response containing pricing, coverage restrictions, pharmacy options for the requested drug and alternative medications (typically the pharmacy benefit manager that handles the patient's prescription benefit) 
* a **medication pricing information source** 

### Consumer App Responsibilities
<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

*  the patient's app gathers information about the prescription... entered by the patient or imported from another source
*  the patient provides coverage information from _their physical insurance card or [CARIN Digital Insurance Card](https://hl7.org/fhir/us/insurance-card)_, or the app retrieves it using an eligibility service
*  _when retrieving patient-specific information such as insurance coverage details,_ the app packages up the patient, coverage, prescription and preferred pharmacy information in HL7 FHIR resources and submits them _using the [RTPBC Request](StructureDefinition-rtpbc-medicationrequest-non-phi.html)_ to the patient's insurer _or other data source_
*  _when retrieving non-patient-specific information, the app supplies_only non-patient-identifiable prescription, pharmacy and insurance information in the [Non-PHI RTPBC Request](StructureDefinition-rtpbc-medicationrequest-non-phi.html)_
*  the app interprets and presents the returned information in an understandable way, possibly presenting insurance coverage alongside cash or discount pricing gathered from other sources

### Insurer Responsibilities 

*  determines the patient cost and coverage details for the requested pharmacy and potentially for other pharmacy options--such as a mail service pharmacy
*  also checks for preferred alternative medications with better coverage under the patient's plan, and returns cost, coverage and pharmacy options for those as well

#### Other Data Source Source Responsibilities
<p class="modified-content">This section has be adjusted. <i>Modifications are italicized.</i></p> 

*  determines the price for the requested medication and pharmacy combination and other medication/pharmacy options
*  identifies discounts that apply, related to coupons or memberships
_*  or identifies other medication-related information or services to be presented to the patient_

#### Error handling
If the insurer or medication pricing source cannot complete processing of the request, it returns information about the exception that occurred. See <a href="error_handling.html">the Error Handling page</a>

### Related information flows outside of consumer RTPBC
The patient's app might gather related information (e.g., medication information or insurance eligibility) before submitting the consumer RTPBC request. 
*These exchanges are outside the scope of this guide.*
<br>

<div><p>
  <img src="related-info-flows.png" style="float:none">  
    </p>
</div>

<br><br>



[Next Page](information_content_and_fhir_resources.html)