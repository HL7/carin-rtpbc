Instance: rtpbc-request
InstanceOf: MessageDefinition
Usage: #definition
* url = "http://hl7.org/fhir/us/carin-rtpbc/MessageDefinition/rtpbc-request"
* version = "1.0.0"
* name = "RtpbcRequest"
* title = "RTPBC Request Message Definition"
* status = #active
* experimental = false
* date = "2020-05-23T00:00:00-05:00"
* publisher = "'HL7 International / Pharmacy"
* contact[0].name = "'HL7 International / Pharmacy"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* contact[+].name = "Frank McKinney"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "fm@frankmckinney.com"
* description = "Request for patient cost and coverage information for a prescribed medication"
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* purpose = "Requests patient cost and coverage information for a prescribed medication"
* eventCoding = $rtpbc-event-type-cs#rtpbc-request
* category = #notification
* focus.code = #Claim
* focus.profile = $rtpbc-request-claim
* focus.min = 1
* focus.max = "1"
* allowedResponse.message = $rtpbc-response
* allowedResponse.situation = "Returned when processing completes without encountering a system error"