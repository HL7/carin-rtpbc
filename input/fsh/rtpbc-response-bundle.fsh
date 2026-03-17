Profile: RtpbcResponseBundle
Parent: Bundle
Id: rtpbc-response-bundle
Title: "RTPBC Response Bundle"
Description: "This profile constrains a Bundle resource for use as the response in a Real-time Pharmacy Benefit Check (RTPBC) process"
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
* . ^mustSupport = false
* type only code
* type = #message (exactly)
* type MS
* total 0..0
* total ^mustSupport = false
* entry ..* MS
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry.search 0..0
* entry.search ^mustSupport = false
* entry.request 0..0
* entry.request ^mustSupport = false
* entry.response 0..0
* entry.response ^mustSupport = false
* entry contains
    messageheader 1..1 MS and
    claimresponse 1..1 MS and
    patient 1..1 MS and
    pharmacy 0..* MS and
    coverage 0..* MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $rtpbc-response-messageheader
* entry[claimresponse].resource 1..1 MS
* entry[claimresponse].resource only $rtpbc-response-claimresponse
* entry[patient].resource 1..1 MS
* entry[patient].resource only $rtpbc-patient
* entry[pharmacy].resource 1..1 MS
* entry[pharmacy].resource only $rtpbc-pharmacy-organization
* entry[coverage].resource 1..1 MS
* entry[coverage].resource only $rtpbc-coverage


//--------------------------------

Instance: rtpbc-bundle-response-01
InstanceOf: rtpbc-response-bundle
Usage: #example
Description: "An example RTPBC response bundle produced by the patient's insurer"
* meta.profile = $rtpbc-response-bundle
* type = #message
* timestamp = "2019-11-15T13:10:15-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-response-01"
* entry[=].resource = rtpbc-messageheader-response-01
* entry[+].fullUrl = "http://example.org/my-app/ClaimResponse/rtpbc-claim-response-01"
* entry[=].resource = rtpbc-claim-response-01
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-01"
* entry[=].resource = rtpbc-patient-01
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03m"
* entry[=].resource = rtpbc-organization-03m

Instance: rtpbc-messageheader-response-01
InstanceOf: rtpbc-response-messageheader
Usage: #inline
* meta.profile = $rtpbc-response-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-response "RTPBC Response"
* source.name = "PharmacyBenefitsCompany"
* source.endpoint = "http://example.org/PharmacyBenefitsCo/fhir"
* response.identifier = "rtpbc-messageheader-request-01"
* response.code = #ok
* focus = Reference(http://example.org/my-app/ClaimResponse/rtpbc-claim-response-01)
* definition = $rtpbc-response



