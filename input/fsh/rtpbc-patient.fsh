Profile: RtpbcPatient
Parent: $us-core-patient
Id: rtpbc-patient
Title: "RTPBC Patient"
Description: """This profile constrains the Patient resource for carrying the limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process. 

The RTPBC profile further constrains certain US Core and base elements in a manner that is compatible with the the US Core profile (e.g., tightening element cardinality and further limiting allowed terminology)."""
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-12-02T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* address ^comment = "Address may be used by the payer to identify the patient's insurance records"
* address.state from $rtpbc-state-and-province-code-vs (extensible)
* address.state ^binding.description = "RTPBC Two Letter State and Province Codes"
* address.country from $rtpbc-country-code-vs (extensible)
* address.country ^comment = "Populate when not a US address"
* address.country ^min = 0
* address.country ^binding.description = "ISO 3166 2-character country codes"
* address.period 0..1 MS
* communication 0..* MS
* communication.language from $simple-language (extensible)


Instance: rtpbc-patient-03
InstanceOf: rtpbc-patient
Usage: #example
Description: "An example RTPBC patient"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-patient"
* identifier.type = $v2-0203#PI "Patient internal identifier"
* identifier.type.text = "Patient internal identifier"
* identifier.system = "http://example.org/MyPatientApp"
* identifier.value = "30455"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female
* birthDate = "1975-12-05"
* address.line = "100 Oak Court"
* address.city = "Madison"
* address.state = "WI"
* address.postalCode = "53510"
* address.country = "US"


Instance: rtpbc-patient-03ps
InstanceOf: rtpbc-patient
Usage: #example
Description: "An example RTPBC patient with minimal content"
* meta.profile = $rtpbc-patient
* identifier.type = $v2-0203#PI "Patient internal identifier"
* identifier.type.text = "Patient internal identifier"
* identifier.system = "http://example.org/MyPatientApp"
* identifier.value = "30455"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female
* birthDate = "1975-12-05"


