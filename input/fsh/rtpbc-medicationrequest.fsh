Profile: RtpbcMedicationRequest
Parent: MedicationRequest
Id: rtpbc-medicationrequest
Title: "RTPBC Medication Request"
Description: """This profile constrains the MedicationRequest resource to convey a subset of prescription information required in the consumer real-time pharmacy benefit check (RTPBC) process. The content specifies the prescribed product and quantity, and references the prescribing practitioner and the patient's preferred pharmacy. 

This profile differs from the US Core MedicationRequest in that it doesn't set the encounter or dosageInstruction elements as Must Support, because clients in the exchange will typically be mobile consumer applications that do not posess this information, and because that information is not pertinent to this use case."""
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-05-23T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* status 1..1 MS
* status only code
* status = #draft (exactly)
* status ^label = "Request Status"
* status ^short = "Request Status"
* status ^definition = "Status of the request for dispensing"
* status ^comment = "Always equals 'draft'"
* intent 1..1 MS
* intent = #proposal (exactly)
* intent ^definition = "Intent of the request for dispensing"
* intent ^comment = "Always equals 'proposal'"
* reported[x] 1.. MS
* reported[x] only boolean
* reported[x] ^definition = "Indicates whether the prescription information has been reported by the patient or other party (.reported = true) or is the original prescription record (.reported = false)."
* medication[x] 1..1 MS
* medication[x] only CodeableConcept
* medication[x] from $rtpbc-prescribable-product-code-vs (extensible)
* medication[x] ^label = "Prescribed Product"
* medication[x] ^short = "Prescribed Product"
* medication[x] ^definition = "A product identifier for the prescribed medication. Either an NDC11 or an RxNorm code for a prescribable product (representing drug name, strength and dose form)"
* medication[x] ^comment = "The NDC11 is an 11-digit normalized format consisting of a 5-digit labeler segment, 4-digit product segment, and 2-digit package segment, with no dashes"
* medication[x] ^binding.description = "RTPBC prescribable product codes (NDC11 and RxNorm)"
* subject 1..1 MS
* subject only Reference($rtpbc-patient)
* subject ^label = "Patient"
* subject ^short = "Patient"
* subject ^definition = "The patient for whom this medication is being requested"
* authoredOn 1..1 MS
* authoredOn ^definition = "The actual or approximate date on which the prescription was written."
* requester 1..1 MS
* requester only Reference($us-core-practitioner)
* requester ^label = "Prescriber"
* requester ^short = "Prescriber"
* requester ^definition = "The prescriber of the medication being requested"
* reasonCode ^label = "Diagnosis"
* dosageInstruction MS
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
* dispenseRequest.performer 1.. MS
* dispenseRequest.performer only Reference($rtpbc-pharmacy-organization)
* dispenseRequest.performer ^label = "Pharmacy"
* dispenseRequest.performer ^short = "Pharmacy"
* dispenseRequest.performer ^definition = "Proposed dispensing pharmacy."
* substitution 1.. MS
* substitution ^label = "Substitution"
* substitution ^short = "Substitution"
* substitution.allowed[x] only boolean
* substitution.allowed[x] MS
* substitution.allowed[x] ^label = "Substitution Allowed"
* substitution.allowed[x] ^short = "Substitution Allowed"
* substitution.allowed[x] ^definition = "Whether or not the pharmacy may dispense a substitutable generic product instead of a requested branded product"