Profile: RtpbcMedicationRequestNonPHI
Parent: $us-core-medicationrequest
Id: rtpbc-medicationrequest-non-phi
Title: "RTPBC Medication Request - Non-PHI"
Description: "This profile provides minimal prescription characteristics for submission in an RTPBC request to data sources that can provide benefit or price information without receiving patient details."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-12-12T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* status = #draft (exactly)
* status ^label = "Request Status"
* status ^short = "Request Status"
* status ^definition = "Status of the request for dispensing"
* status ^comment = "Always equals 'draft'"
* intent = #proposal (exactly)
* intent ^definition = "Intent of the request for dispensing"
* intent ^comment = "Always equals 'proposal'"
* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medication[x] from $rtpbc-prescribable-product-code-vs (extensible)
* medication[x] ^label = "Prescribed Product"
* medication[x] ^short = "Prescribed Product"
* medication[x] ^definition = "The prescribed medication. Name + strength + dose form is always provided in the text element. Product identifier is included when known"
* medication[x] ^comment = "The NDC11 is an 11-digit normalized format consisting of a 5-digit labeler segment, 4-digit product segment, and 2-digit package segment, with no dashes"
* medication[x] ^binding.description = "RTPBC prescribable product codes (NDC11 and RxNorm)"
* medication[x].coding.system 0..1 MS 
* medication[x].coding.code 0..1 MS 
* medication[x].text 0..1 MS 
* medication[x].text ^label = "Medication name, strength and dose form"
* subject.extension 1..* MS
* subject.extension contains
    $data-absent-reason named data-masked 1..1 MS
* subject.extension[data-masked].valueCode = #masked (exactly)
* subject ^label = "Patient Information Masked"
* subject ^short = "Patient Information Masked"
* subject ^definition = "No personally-identifiable information is included in this profile. Instead, the patient element is populated with a Data Absent Reason = 'masked'"
* subject.reference 0..0
* subject.type 0..0
* subject.identifier 0..0
* subject.display 0..0
* authoredOn ^definition = "The actual or approximate date on which the prescription was written."
* requester 0..0
* requester ^label = "Prescriber Information Masked"
* requester ^short = "Prescriber Information Masked"
* requester ^definition = "No personally-identifiable information is included in this profile. The requesting provider is not included because it can be used to re-identify patients in some circumstances"
* reasonCode ^label = "Diagnosis"
* dispenseRequest 1.. MS
* dispenseRequest.quantity 1..1 MS
* dispenseRequest.quantity ^label = "Prescribed Quantity"
* dispenseRequest.quantity ^short = "Prescribed Quantity"
* dispenseRequest.quantity.value 1.. MS
* dispenseRequest.quantity.value ^label = "Quantity in Billing Units"
* dispenseRequest.quantity.value ^short = "Quantity in Billing Units"
* dispenseRequest.quantity.value ^definition = "The prescribed quantity in terms of the applicable billing unit of measure"
* dispenseRequest.quantity.unit 1.. MS
* dispenseRequest.quantity.unit from $rtpbc-billing-unit-vs (extensible)
* dispenseRequest.quantity.unit ^label = "Billing unit of measure"
* dispenseRequest.quantity.unit ^short = "Billing unit of measure"
* dispenseRequest.quantity.unit ^definition = "Pharmacy metric billing unit: GM (gram), ML (milliliter) or EA (each)"
* dispenseRequest.quantity.unit ^binding.description = "Billing quantity unity of measure"
* dispenseRequest.expectedSupplyDuration MS
* dispenseRequest.expectedSupplyDuration ^label = "Days Supply"
* dispenseRequest.expectedSupplyDuration ^short = "Days Supply"
* dispenseRequest.expectedSupplyDuration.value MS
* dispenseRequest.expectedSupplyDuration.value ^label = "Days Supply Value"
* dispenseRequest.expectedSupplyDuration.value ^short = "Days Supply Value"
* dispenseRequest.expectedSupplyDuration.value ^definition = "The number of days the requested dispense quantity is intended to last"
* dispenseRequest.performer 0.. MS
* dispenseRequest.performer ^label = "Pharmacy"
* dispenseRequest.performer ^short = "Pharmacy"
* dispenseRequest.performer ^definition = "Proposed dispensing pharmacy."
* substitution 0.. MS
* substitution ^label = "Substitution"
* substitution ^short = "Substitution"
* substitution.allowed[x] only boolean
* substitution.allowed[x] MS
* substitution.allowed[x] ^label = "Substitution Allowed"
* substitution.allowed[x] ^short = "Substitution Allowed"
* substitution.allowed[x] ^definition = "Whether or not the pharmacy may dispense a substitutable generic product instead of a requested branded product"


Instance: rtpbc-medicationrequest-non-phi-1
InstanceOf: rtpbc-medicationrequest-non-phi
Description: "An example non-PHI RTPBC MedicationRequest"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-medicationrequest-non-phi"
* status = #draft
* intent = #proposal
* reportedBoolean = true
//* medicationCodeableConcept = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* medicationCodeableConcept.text = "Prozac 10mg Capsule"
* subject.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* subject.extension[data-masked].valueCode = #masked
* authoredOn = "2025-11-01"
* dispenseRequest.quantity.value = 60
* dispenseRequest.quantity.unit = "{Each}"
* dispenseRequest.performer = Reference(rtpbc-organization-03)


Instance: rtpbc-medicationrequest-non-phi-2
InstanceOf: rtpbc-medicationrequest-non-phi
Description: "An example non-PHI RTPBC MedicationRequest"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-medicationrequest-non-phi"
* status = #draft
* intent = #proposal
* reportedBoolean = true
//* medicationCodeableConcept = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* medicationCodeableConcept.text = "Prozac 10mg Capsule"
* subject.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* subject.extension[data-masked].valueCode = #masked
* authoredOn = "2025-11-01"
* dispenseRequest.quantity.value = 60
* dispenseRequest.quantity.unit = "{Each}"
* dispenseRequest.performer = Reference(rtpbc-organization-03)
