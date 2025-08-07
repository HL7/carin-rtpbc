Alias: $rtpbc-benefit-restriction = http://hl7.org/fhir/us/carin-rtpbc/ValueSet/rtpbc-benefit-restriction

Extension: RtpbcExtensionBenefitRestriction
Id: rtpbc-benefitRestriction
Title: "RTPBC benefitRestriction Extension"
Description: "This extension conveys benefit restrictions that may apply to a prescription product and pharmacy combination."
Context: ClaimResponse.item, ClaimResponse.addItem
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
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
* . 0..*
* . ^short = "Benefit restriction."
* . ^definition = "Benefit restrictions that may apply to a prescription product and pharmacy combination."
* value[x] 1..
* value[x] only Coding
* value[x] from $rtpbc-benefit-restriction (extensible)