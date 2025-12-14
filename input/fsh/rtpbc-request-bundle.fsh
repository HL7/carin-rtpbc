Profile: RtpbcRequestBundle
Parent: Bundle
Id: rtpbc-request-bundle
Title: "RTPBC Request Bundle"
Description: "This profile constrains a Bundle resource for use as the request in a Real-time Pharmacy Benefit Check (RTPBC) process"
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
* entry 5..* MS
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
    claim 1..1 MS and
    patient 1..1 MS and
    medicationrequest 1..1 MS and
    pharmacy 1..1 MS and
    practitioner 1..1 MS and
    coverage 0..1 MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $rtpbc-request-messageheader
* entry[claim].resource 1..1 MS
* entry[claim].resource only $rtpbc-request-claim
* entry[patient].resource 1..1 MS
* entry[patient].resource only $rtpbc-patient
* entry[medicationrequest].resource 1..1 MS
* entry[medicationrequest].resource only $rtpbc-medicationrequest
* entry[pharmacy].resource 1..1 MS
* entry[pharmacy].resource only $rtpbc-pharmacy-organization
* entry[practitioner].resource 1..1 MS
* entry[practitioner].resource only $us-core-practitioner
* entry[coverage].resource 1..1 MS
* entry[coverage].resource only $rtpbc-coverage

//-------------------

Instance: rtpbc-bundle-request-price-source
InstanceOf: rtpbc-request-bundle
Usage: #example
Description: "An example RTPBC request bundle"
* meta.profile = $rtpbc-request-bundle
* type = #message
* timestamp = "2019-11-15T13:10:13-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-request-03"
* entry[=].resource = rtpbc-messageheader-request-03
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-03"
* entry[=].resource = rtpbc-claim-03
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-03"
* entry[=].resource = rtpbc-patient-03
* entry[+].fullUrl = "http://example.org/my-app/MedicationRequest/rtpbc-medicationrequest-03"
* entry[=].resource = rtpbc-medicationrequest-03
* entry[+].fullUrl = "http://example.org/my-app/Practitioner/rtpbc-practitioner-03"
* entry[=].resource = rtpbc-practitioner-03
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03"
* entry[=].resource = rtpbc-organization-03

Instance: rtpbc-messageheader-request-03
InstanceOf: rtpbc-request-messageheader
Usage: #inline
//Description: "An example request MessageHeader"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-request-messageheader"
* eventCoding = $rtpbc-event-type-cs#rtpbc-request "RTPBC Request"
* source.name = "MyPatientApp"
* source.endpoint = "http://example.org/MyPatientApp"
* focus = Reference(Claim/rtpbc-claim-03)
* definition = "http://hl7.org/fhir/us/carin-rtpbc/MessageDefinition/rtpbc-request"

Instance: rtpbc-claim-03
InstanceOf: rtpbc-request-claim
//Usage: #inline
Description: "An example of the primary RTPBC request resource (Claim)"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-request-claim"
* identifier.value = "rtpbc-03"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(rtpbc-patient-03)
* created = "2019-11-01T11:20:54-05:00"
* provider = Reference(Organization/rtpbc-organization-03)
* priority = $processpriority-cs#normal "Normal"
* prescription = Reference(MedicationRequest/rtpbc-medicationrequest-03)
* careTeam.sequence = 1
* careTeam.provider = Reference(Practitioner/rtpbc-practitioner-03)
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.identifier.value = "GOODPRICING"
* item.sequence = 1
* item.careTeamSequence = 1
* item.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* item.quantity.value = 60
* item.quantity.unit = "{Each}"

//------------------


Instance: rtpbc-bundle-request-03
InstanceOf: rtpbc-request-bundle
Usage: #example
Description: "An example RTPBC Request"
* meta.profile = $rtpbc-request-bundle
* type = #message
* timestamp = "2019-11-15T13:10:13-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-request-03a"
* entry[=].resource = rtpbc-messageheader-request-03a
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-03a"
* entry[=].resource = rtpbc-claim-03a
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-03"
* entry[=].resource = rtpbc-patient-03
* entry[+].fullUrl = "http://example.org/my-app/Coverage/rtpbc-coverage-01"
* entry[=].resource = rtpbc-coverage-01
* entry[+].fullUrl = "http://example.org/my-app/MedicationRequest/rtpbc-medicationrequest-03"
* entry[=].resource = rtpbc-medicationrequest-03
* entry[+].fullUrl = "http://example.org/my-app/Practitioner/rtpbc-practitioner-03"
* entry[=].resource = rtpbc-practitioner-03
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03"
* entry[=].resource = rtpbc-organization-03

Instance: rtpbc-messageheader-request-03a
InstanceOf: rtpbc-request-messageheader
Usage: #inline
* meta.profile = $rtpbc-request-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-request "RTPBC Request"
* source.name = "MyPatientApp"
* source.endpoint = "http://example.org/MyPatientApp"
* focus = Reference(http://example.org/my-app/Claim/rtpbc-claim-03a)
* definition = $rtpbc-request

Instance: rtpbc-claim-03a
InstanceOf: rtpbc-request-claim
Usage: #inline
* meta.profile = $rtpbc-request-claim
* identifier.value = "rtpbc-03a"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(rtpbc-patient-03)
* created = "2019-11-01T11:20:54-05:00"
* provider = Reference(Organization/rtpbc-organization-03)
* priority = $processpriority-cs#normal "Normal"
* prescription = Reference(MedicationRequest/rtpbc-medicationrequest-03)
* careTeam.sequence = 1
* careTeam.provider = Reference(Practitioner/rtpbc-practitioner-03)
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage = Reference(Coverage/rtpbc-coverage-01)
* item.sequence = 1
* item.careTeamSequence = 1
* item.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* item.quantity.value = 60
* item.quantity.unit = "{Each}"

