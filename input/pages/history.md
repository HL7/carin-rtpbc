This page describes the primary releases of the specification and summarizes the content for each:

### Release 2.0.0-ballot

**Breaking changes**:
* [FHIR-51679 Replace NamingSystems with external terminologies added to THO](https://jira.hl7.org/browse/FHIR-51679). The IG has been updated to reference NCPDP code systems that are now listed in THO (terminology.hl7.org), resulting in changes to the code system identifiers for the following: 
  * NCPDP Pharmacy Type: http://terminology.hl7.org/CodeSystem/  
  * NCPDP Provider Identification Number: http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber
  * NCPDP Reject Code: http://terminology.hl7.org/CodeSystem/NCPDPRejectCode
 
**Substative changes**
* [FHIR-36634	Consider Addition of Formulary Status Information](https://jira.hl7.org/browse/FHIR-36634) - Added Formulary Status to the insurer RTPBC Response, based on NCPDP content
* [FHIR-36633	New NCPDP Coverage Restriction Values + Consider Addition of Next Available Fill Date](https://jira.hl7.org/browse/FHIR-36633). Added next available fill date information to the insurer RTPBC Response, based on NCPDP content
* [FHIR-36294	Consider Addition of Deductible Accumulator Fields to Consumer RTPBC response](https://jira.hl7.org/browse/FHIR-36294) Added accumulated deductible information to the insurer RTPBC Response, based on NCPDP content
* [FHIR-53617	Include a non-PHI request to data sources that don't require patient information](https://jira.hl7.org/browse/FHIR-53617). Added a request / response option for obtaining information such as discount pricing from sources that do not wish to receive personally-identifiable information.
* [FHIR-53617	Include a non-PHI request to data sources that don't require patient information](https://jira.hl7.org/browse/FHIR-53617). Added a request / response option for obtaining information such as discount pricing from sources that do not wish to receive personally-identifiable information.
* [FHIR-53620	Update profiles to current US Core](https://jira.hl7.org/browse/FHIR-53620)

**Non-substantive changes**:
* [FHIR-51683 Convert profile definitions in IG from XML to FSH](https://jira.hl7.org/browse/FHIR-51683). Converted IG and profile definitions from manually-edited XML to FSH
* [FHIR-51678	Correct resource referencing in Bundle examples](https://jira.hl7.org/browse/FHIR-51678)

In addition, there have been various miscellaneous non-substantive improvements to formatting, spelling, grammar, etc.



### Release 1.0.0
Initial release of the Consumer Real-Time Pharmacy Benefit Check specification.