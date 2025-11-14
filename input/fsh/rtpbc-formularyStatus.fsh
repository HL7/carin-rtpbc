Extension: RtpbcExtensionFormularyStatus
Id: rtpbc-formularyStatus
Title: "RTPBC formularyStatus Extension"
Description: "This extension conveys the formulary status of a prescription product."
Context: ClaimResponse.item, ClaimResponse.addItem
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-10-03T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . 0..*
* . ^short = "Formulary status."
* . ^definition = "Formulary status that may apply to a prescription product and pharmacy combination."
* value[x] 1..1
* value[x] only Coding
* value[x] from $rtpbc-formulary-status (extensible)