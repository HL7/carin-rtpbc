Extension: RtpbcExtensionRelatedCoverage
Id: rtpbc-relatedCoverage
Title: "RTPBC relatedCoverage Extension"
Description: "This extension conveys the coverage associated with an RTPBC Response item or addItem"
Context: ClaimResponse.item, ClaimResponse.addItem
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2026-02-17T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . 0..*
* . ^short = "Related Coverage."
* . ^definition = "Coverage related to an RTPBC Response item or addItem."
* value[x] 1..1
* value[x] only Reference(rtpbc-coverage or rtpbc-coverage-non-phi)