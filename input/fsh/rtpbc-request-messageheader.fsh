Profile: RtpbcRequestMessageHeader
Parent: MessageHeader
Id: rtpbc-request-messageheader
Title: "RTPBC Request MessageHeader"
Description: "This profile constrains a MessageHeader resource for use in a Real-time Pharmacy Benefit Check (RTPBC) request bundle"
* ^version = "1.0.0"
* ^status = #active
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
* . ^mustSupport = false
* eventCoding 1..1 MS
* eventCoding only Coding
* eventCoding = $rtpbc-event-type-cs#rtpbc-request "RTPBC Request"
* focus ^slicing.discriminator.type = #profile
* focus ^slicing.discriminator.path = "$this"
* focus ^slicing.rules = #open
* focus contains rtpbc-request 1..1 MS
* focus[rtpbc-request] only Reference($rtpbc-request-claim)
* focus[rtpbc-request] ^type.aggregation = #bundled
* definition 1.. MS
* definition = $rtpbc-request (exactly)