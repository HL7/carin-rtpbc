Alias: $rtpbc-state-and-province-code = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-state-and-province-code
Alias: $rtpbc-country-code = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-country-code
Alias: $simple-language = http://hl7.org/fhir/us/core/ValueSet/simple-language

Profile: RtpbcPatient
Parent: Patient
Id: rtpbc-patient
Title: "RTPBC Patient"
Description: """This profile constrains the Patient resource for carrying the limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process. 

The profile differs from the US Core Patient profile in certain respects. It does not contain the us-core-race, us-core-ethnicity or us-core-birthsex extensions, and the Patient.communication.language and Patient.telecom elements are not set to Must Support; these variances reflects that clients in the exchange will typically be mobile consumer applications that do not posess this information, and that the information is not pertinent to this use case. 

The RTPBC profile further constrains certain US Core and base elements in a manner that is compatible with the the US Core profile (e.g., tightening element cardinality and further limiting allowed terminology)."""
* ^version = "1.0.0"
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
* identifier 1..* MS
* identifier only Identifier
* identifier.system 1..1 MS
* identifier.system only uri
* identifier.value 1..1 MS
* identifier.value only string
* identifier.value ^short = "The value that is unique within the system."
* name 1..1 MS
* name.family 1..1 MS
* name.family ^label = "Patient family name"
* name.family ^short = "Patient family name"
* name.given 1.. MS
* name.given ^label = "Patient given name(s)"
* name.given ^short = "Patient given name(s)"
* name.given ^definition = "One or more given names of the patient"
* name.given ^alias = "first name, middle name"
* gender 1..1 MS
* gender from AdministrativeGender (required)
* gender ^label = "Patient gender"
* gender ^short = "Patient gender"
* gender ^definition = "The patient's administrative gender (male, female, other, unknown)"
* gender ^binding.description = "Administrative gender"
* birthDate 1.. MS
* birthDate ^label = "Patient birth date"
* birthDate ^short = "Patient birth date"
* address ..1 MS
* address ^label = "Patient address"
* address ^short = "Patient address"
* address ^definition = "The patient's home address"
* address ^comment = "Address may be used by the payer to identify the patient's insurance records"
* address.line 0..* MS
* address.city 0..1 MS
* address.state 0..1 MS
* address.state from $rtpbc-state-and-province-code (extensible)
* address.state ^binding.description = "RTPBC Two Letter State and Province Codes"
* address.postalCode 0..1 MS
* address.country MS
* address.country from $rtpbc-country-code (extensible)
* address.country ^comment = "Populate when not a US address"
* address.country ^min = 0
* address.country ^binding.description = "ISO 3166 2-character country codes"
* address.period 0..1 MS
* communication 0..* MS
* communication.language 1..1
* communication.language only CodeableConcept
* communication.language from $simple-language (extensible)

