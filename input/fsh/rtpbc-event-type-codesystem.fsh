CodeSystem: RtpbcEventTypeCodeSystem
Id: rtpbc-event-type
Title: "RTPBC Event Type Code System"
Description: "This code system defines event types used in RTPBC message headers"
* ^meta.lastUpdated = "2020-05-23T00:00:00-05:00"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2019-12-08T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = false
* ^content = #complete
* #rtpbc-request "RTPBC Request" "Real-time Pharmacy Benefit Check (RTPBC) request"
* #rtpbc-response "RTPBC Response" "Real-time Pharmacy Benefit Check (RTPBC) response"