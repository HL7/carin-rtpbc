Profile: RtpbcResponseMessageHeaderNonPHI
Parent: MessageHeader
Id: rtpbc-response-messageheader-non-phi
Title: "RTPBC Non-PHI Response MessageHeader"
Description: "This profile constrains a MessageHeader resource for use in a Real-time Pharmacy Benefit Check (RTPBC) Non-PHI response bundle"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-01-17T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^mustSupport = false
* eventCoding 1..1 MS
* eventCoding only Coding
* eventCoding = $rtpbc-event-type-cs#rtpbc-response-non-phi "RTPBC Non-PHI Response"
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this"
* focus ^slicing.rules = #open
* focus contains rtpbc-response-non-phi 1..1 MS
* focus[rtpbc-response-non-phi] only Reference($rtpbc-response-claimresponse-non-phi)
* focus[rtpbc-response-non-phi] ^type.aggregation = #bundled
* definition 1.. MS
* definition = $rtpbc-response-non-phi (exactly)