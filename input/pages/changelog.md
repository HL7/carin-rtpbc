This page describes the primary releases of the specification and summarizes the content for each:

### Release 2.0.0

**Substantive changes**
* [FHIR-57117 (Error Code binding)](https://jira.hl7.org/browse/FHIR-57117) - ValueSet binding of ClaimResponse.error to the [RTPBC Error Code Value Set](https://build.fhir.org/ig/HL7/carin-rtpbc/en/ValueSet-rtpbc-error-code.html) in the following profiles was changed from preferred to extensible:
  * [RTPBC Response Using ClaimResponse](https://build.fhir.org/ig/HL7/carin-rtpbc/en/StructureDefinition-rtpbc-response-claimresponse.html)
  * [RTPBC Non-PHI Response Using ClaimResponse](https://build.fhir.org/ig/HL7/carin-rtpbc/en/StructureDefinition-rtpbc-response-claimresponse-non-phi.html)

**Non-substantive changes**
* [FHIR-56717 References NDC11](https://jira.hl7.org/browse/FHIR-56717). Changed narrative references to the NDC drug code from NDC-11 to simply NDC throughout, in light of the upcoming expansion of the NDC code to 12 characters.
* Clarifications and wording corrections on the Home page and Background pages. 

### Release 2.0.0-ballot

**Breaking changes**:
* [FHIR-51679 Replace NamingSystems with external terminologies added to THO](https://jira.hl7.org/browse/FHIR-51679). The IG has been updated to reference NCPDP code systems that are now listed in THO (terminology.hl7.org), resulting in changes to the code system identifiers for the following: 
  * NCPDP Pharmacy Type: http://terminology.hl7.org/CodeSystem/  
  * NCPDP Provider Identification Number: http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber
  * NCPDP Reject Code: http://terminology.hl7.org/CodeSystem/NCPDPRejectCode
* In addition, the code systems below are now noted as temporary, the content of which expected to be incorporated in code systems managed in http://terminology.hl7.org in the future:
  * RTPBC Benefit Restriction Code System (Temporary)
  * RTPBC Patient Pay Type Code System (Temporary)
 
**Substantive changes**
* [FHIR-36634	Consider Addition of Formulary Status Information](https://jira.hl7.org/browse/FHIR-36634) - Added Formulary Status to the insurer RTPBC Response, based on NCPDP content
* [FHIR-36633	New NCPDP Coverage Restriction Values + Consider Addition of Next Available Fill Date](https://jira.hl7.org/browse/FHIR-36633). Added next available fill date information to the insurer RTPBC Response, based on NCPDP content
* [FHIR-36294 Consider Addition of Deductible Accumulator Fields to Consumer RTPBC response](https://jira.hl7.org/browse/FHIR-36294) Added accumulated deductible information to the insurer RTPBC Response, based on NCPDP content
* [FHIR-53617	Include a non-PHI request to data sources that don't require patient information](https://jira.hl7.org/browse/FHIR-53617). Added a request / response option for obtaining information such as discount pricing from sources that do not wish to receive personally-identifiable information.
  * In addition, included the ability to return a Coverage resource in both PHI and non-PHI response bundles to represent discount card adjudication information.
* [FHIR-53620	Update profiles to current US Core](https://jira.hl7.org/browse/FHIR-53620). 

**Non-substantive changes**:
* [FHIR-51683 Convert profile definitions in IG from XML to FSH](https://jira.hl7.org/browse/FHIR-51683). Converted IG and profile definitions from manually-edited XML to FSH
* [FHIR-51678	Correct resource referencing in Bundle examples](https://jira.hl7.org/browse/FHIR-51678)

In addition, there have been various miscellaneous non-substantive improvements to formatting, spelling, grammar, etc.



### Release 1.0.0
Initial release of the Consumer Real-Time Pharmacy Benefit Check specification.