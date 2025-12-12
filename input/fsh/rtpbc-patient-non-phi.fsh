Profile: RtpbcPatientNonPHI
Parent: Patient
Id: rtpbc-patient-non-phi
Title: "RTPBC Patient - Non-PHI"
Description: "This profile provides minimal, non-persoanlly-identifiable patient characteristics for submission in an RTPBC request to data sources that can provide benefit or price information without receiving patient details."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-12-11T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* address ^comment = "Only city, state, country and/or postal code are allowed. Postal code is recommended"
* address.line 0..0
* address.line ^comment = "Street address is not allowed in this non-PHI representation of the patient."
* address.state from $rtpbc-state-and-province-code-vs (extensible)
* address.state ^binding.description = "RTPBC Two Letter State and Province Codes"
* address.postalCode 0..1 MS
* address.country from $rtpbc-country-code-vs (extensible)
* address.country ^binding.description = "ISO 3166 2-character country codes"


Instance: rtpbc-patient-non-phi-1
InstanceOf: rtpbc-patient-non-phi
Usage: #example
Description: "An example non-PHI RTPBC patient"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-patient-non-phi"
* address.postalCode = "53510"

