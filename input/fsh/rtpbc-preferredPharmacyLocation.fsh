Extension: RtpbcExtensionPreferredPharmacyPostalCode
Id: rtpbc-preferredPharmacyPostalCode
Title: "RTPBC Preferred Pharmacy Postal Code Extension"
Description: "This extension specifies the preferred geographic area for the dispensing pharmacy, using a postal code."
Context: Claim.provider
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #phx
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2026-03-05T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^context.type = #element
//* value[x] 1..1
* value[x] only string
* valueString 1..1
* valueString ^short = "Preferred pharmacy postal code"
* valueString ^label = "Preferred pharmacy postal code"
* valueString ^definition = "Patient's desired location of the pharmacy, specified using a postal code"