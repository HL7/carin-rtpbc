

// Core FHIR resources and extensions
// maybe needed:
//Alias: $detectedissue = http://hl7.org/fhir/StructureDefinition/DetectedIssue
//Alias: $operation-outcome = http://hl7.org/fhir/StructureDefinition/OperationOutcome
//Alias: $fhir-resource = http://hl7.org/fhir/StructureDefinition/Resource   // confirm needed

// HL7 terminology
//Alias: $taxonomy = http://nucc.org/provider-taxonomy
//Alias: $operation-event-type = urn:ietf:rfc:3986
//Alias: $ndc = http://hl7.org/fhir/sid/ndc
Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $processpriority = http://terminology.hl7.org/CodeSystem/processpriority
Alias: $coverage-class = http://terminology.hl7.org/CodeSystem/coverage-class
Alias: $claim-type-cs = http://terminology.hl7.org/CodeSystem/claim-type
Alias: $npi = http://hl7.org/fhir/sid/us-npi

// NCPDP terminology (HTA)
Alias: $pharmacy-type-cs = http://terminology.hl7.org/CodeSystem/NCPDPPharmacyType
Alias: $ncpdp-id = http://terminology.hl7.org/CodeSystem/NCPDPProviderIdentificationNumber
Alias: $rtpbc-patient-pay-type-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-patient-pay-type
Alias: $rtpbc-billing-unit-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-billing-unit
Alias: $rtpbc-error-code-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-error-code

// RTPBC terminology
// - code systems
Alias: $rtpbc-event-type-cs = http://hl7.org/fhir/us/carin-rtpbc/CodeSystem/rtpbc-event-type
Alias: $processpriority-cs = http://terminology.hl7.org/CodeSystem/processpriority
Alias: $rtpbc-patient-pay-type-cs = http://hl7.org/fhir/us/carin-rtpbc/CodeSystem/rtpbc-patient-pay-type
Alias: $rtpbc-benefit-restriction-cs = http://hl7.org/fhir/us/carin-rtpbc/CodeSystem/rtpbc-benefit-restriction
Alias: $rtpbc-formulary-status-cs = http://hl7.org/fhir/us/carin-rtpbc/CodeSystem/rtpbc-formulary-status

// - value sets
Alias: $rtpbc-prescribable-product-code-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-prescribable-product-code
Alias: $rtpbc-patient-pay-type-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-patient-pay-type
Alias: $rtpbc-state-and-province-code-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-state-and-province-code
Alias: $rtpbc-country-code-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-country-code
Alias: $rtpbc-pharmacy-type-vs = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-pharmacy-type
Alias: $rtpbc-benefit-restriction = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-benefit-restriction
Alias: $rtpbc-formulary-status = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-formulary-status

// US Core profiles
// maybe needed:
//Alias: $us-core-medication = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication
//Alias: $us-core-medicationrequest = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
//Alias: $us-core-patient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias: $us-core-organization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Alias: $us-core-practitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner

// US Core terminology
// maybe needed:
//Alias: $us-core-medication-clinical-drug = http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1010.4

// RTPBC messaging-related profiles
Alias: $rtpbc-request = http://hl7.org/fhir/us/carin-rtpbc/MessageDefinition/rtpbc-request
Alias: $rtpbc-response = http://hl7.org/fhir/us/carin-rtpbc/MessageDefinition/rtpbc-response
Alias: $rtpbc-request-messageheader = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-request-messageheader
Alias: $rtpbc-response-messageheader = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-response-messageheader

// RTPBC operation-related profiles
// add

// RTPBC content profiles
Alias: $rtpbc-request-claim = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-request-claim
Alias: $rtpbc-patient = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-patient
Alias: $rtpbc-medicationrequest = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-medicationrequest
Alias: $rtpbc-pharmacy-organization = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-pharmacy-organization
Alias: $rtpbc-coverage = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-coverage
Alias: $rtpbc-request-bundle = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-request-bundle
Alias: $rtpbc-response-bundle = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-response-bundle
Alias: $rtpbc-response-claimresponse = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-response-claimresponse
Alias: $rtpbc-benefitRestriction = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-benefitRestriction
Alias: $rtpbc-formularyStatus = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-formularyStatus
Alias: $rtpbc-isAlternative = http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-isAlternative
