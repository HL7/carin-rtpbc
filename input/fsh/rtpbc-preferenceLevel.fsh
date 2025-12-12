Extension: RtpbcExtensionPreferenceLevel
Id: rtpbc-preferenceLevel
Title: "RTPBC preferenceLevel Extension"
Description: "This extension conveys the preference level of a prescription product."
Context: ClaimResponse.item, ClaimResponse.addItem
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-12-03T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^context.type = #element
* value[x] 1..1
* value[x] only positiveInt
* value[x] ^short = "Preference level."
* value[x] ^definition = "Preference level that may apply to a prescription product and pharmacy combination. Values: 1-99, wherre 1 means most preferred and 99 means least preferred."
* value[x] obeys rtpbc-1

Invariant:   rtpbc-1
Description: "Value must be an integer in the range of 1 through 99"
Severity:    #error
Expression:  "$this >= 1 and $this <= 99"