Extension: RtpbcIsAlternativeExtension
Id: rtpbc-isAlternative
Title: "RTPBC isAlternative Extension"
Description: "This extension indicates that this added line item is to be interpreted as one of possibly multiple alternatives to the requested product or service. When isAlternative is true, the added line item is to be considered independently from any other added line items associated with the requested product or service."
Context: ClaimResponse.addItem
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
* . 0..1
* . ^short = "Whether added line item is an independent alternative"
* . ^definition = "Whether this added line item is one alternative to the product or service specified in the associated line item in the Claim--to be considered independently of other added line items"
* . ^comment = "A responder to a predetermination request may wish to provide alternative fulfillment options to the requested product or service. This extension indicates that an added line item is to be interpreted as one of possibly multiple alternatives to the requested product or service. When isAlternative is true, the added line item is to be considered independently from any other added line items associated with the requested product or service."
* value[x] 1..
* value[x] only boolean