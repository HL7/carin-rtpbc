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

Instance: rtpbc-bundle-request-03-price-source
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
* provider = Reference(rtpbc-organization-03)
* priority = $processpriority-cs#normal "Normal"
* prescription = Reference(rtpbc-medicationrequest-03)
* careTeam.sequence = 1
* careTeam.provider = Reference(rtpbc-practitioner-03)
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage.identifier.value = "GOODPRICING"
* item.sequence = 1
* item.careTeamSequence = 1
* item.productOrService = $rxnorm#205535 "PROzac 10 MG Oral Capsule"
* item.quantity.value = 60
* item.quantity.unit = "{Each}"

Instance: rtpbc-patient-03
InstanceOf: rtpbc-patient
//Usage: #inline
Description: "An example RTPBC patient"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-patient"
* identifier.type = $v2-0203#PI "Patient internal identifier"
* identifier.type.text = "Patient internal identifier"
* identifier.system = "http://example.org/MyPatientApp"
* identifier.value = "30455"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female
* birthDate = "1975-12-05"
* address.line = "100 Oak Court"
* address.city = "Madison"
* address.state = "WI"
* address.postalCode = "53510"
* address.country = "US"

Instance: rtpbc-medicationrequest-03
InstanceOf: rtpbc-medicationrequest
//Usage: #inline
Description: "An example RTPBC MedicationRequest"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-medicationrequest"
* status = #draft
* intent = #proposal
* reportedBoolean = true
* medicationCodeableConcept = $rxnorm#205535 "PROzac 10 MG Oral Capsule"
* subject = Reference(rtpbc-patient-03)
* authoredOn = "2019-11-01"
* requester = Reference(rtpbc-practitioner-03)
* dosageInstruction.text = "Take 2 capsules once a day"
* dispenseRequest.quantity.value = 60
* dispenseRequest.quantity.unit = "{Each}"
* dispenseRequest.expectedSupplyDuration = 30 'd' "days"
* dispenseRequest.performer = Reference(rtpbc-organization-03)
* substitution.allowedBoolean = false

Instance: rtpbc-practitioner-03
InstanceOf: $us-core-practitioner
//Usage: #inline
Description: "An example US Core Practitioner"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567890"
* name.family = "Johnson"

Instance: rtpbc-organization-03
InstanceOf: rtpbc-pharmacy-organization
//Usage: #inline
Description: "An example RTPBC pharmacy (Organization), representing a retail pharmacy"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-pharmacy-organization"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9876543210"
* active = true
* type = $pharmacy-type-cs#R "Retail"
* name = "Hometown Drug"
* telecom.system = #phone
* telecom.value = "6081234567"
* address.line = "900 9th Street"
* address.city = "Madison"
* address.state = "WI"
* address.postalCode = "53535"
* address.country = "US"


//------------------

/*
Instance: rtpbc-bundle-request-03-w-header
InstanceOf: rtpbc-request-bundle
Usage: #example
Description: "An example RTPBC MedicationRequest"
* meta.profile = $rtpbc-request-bundle
* type = #message
* timestamp = "2019-11-15T13:10:13-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-request-03a"
* entry[=].resource = rtpbc-messageheader-request-03a
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-03a"
* entry[=].resource = rtpbc-claim-03a
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-03a"
* entry[=].resource = rtpbc-patient-03a
* entry[+].fullUrl = "http://example.org/my-app/Coverage/rtpbc-coverage-03a"
* entry[=].resource = rtpbc-coverage-03a
* entry[+].fullUrl = "http://example.org/my-app/MedicationRequest/rtpbc-medicationrequest-03a"
* entry[=].resource = rtpbc-medicationrequest-03a
* entry[+].fullUrl = "http://example.org/my-app/Practitioner/rtpbc-practitioner-03a"
* entry[=].resource = rtpbc-practitioner-03a
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03a"
* entry[=].resource = rtpbc-organization-03a

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
* patient = Reference(rtpbc-patient-03a)
* created = "2019-11-01T11:20:54-05:00"
* provider = Reference(rtpbc-organization-03a)
* priority = $processpriority-cs#normal "Normal"
* prescription = Reference(rtpbc-medicationrequest-03a)
* careTeam.sequence = 1
* careTeam.provider = Reference(rtpbc-practitioner-03a)
* insurance.sequence = 1
* insurance.focal = true
* insurance.coverage = Reference(rtpbc-coverage-03a)
* item.sequence = 1
* item.careTeamSequence = 1
* item.productOrService = $rxnorm#205535 "PROzac 10 MG Oral Capsule"
* item.quantity.value = 60
* item.quantity.unit = "{Each}"

Instance: rtpbc-patient-03a
InstanceOf: rtpbc-patient
Usage: #inline
* meta.profile = $rtpbc-patient
* identifier.type = $v2-0203#PI "Patient internal identifier"
* identifier.type.text = "Patient internal identifier"
* identifier.system = "http://example.org/MyPatientApp"
* identifier.value = "30455"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female
* birthDate = "1975-12-05"
* address.line = "100 Oak Court"
* address.city = "Madison"
* address.state = "WI"
* address.postalCode = "53510"
* address.country = "US"

Instance: rtpbc-coverage-03a
InstanceOf: rtpbc-coverage
// Usage: #inline
Description: "An example RTPBC Coverage"
* meta.profile = $rtpbc-coverage
* status = #active
* beneficiary = Reference(rtpbc-patient-03a)
* payor.identifier.value = "Pharmacy Plans US"
* class[0].type = $coverage-class#rxbin
* class[=].value = "BIN001"
* class[+].type = $coverage-class#rxpcn
* class[=].value = "PCN002"
* class[+].type = $coverage-class#rxgroup
* class[=].value = "GROUP0001"
* class[+].type = $coverage-class#rxid
* class[=].value = "MEMBER000001"

Instance: rtpbc-medicationrequest-03a
InstanceOf: rtpbc-medicationrequest
Usage: #inline
* meta.profile = $rtpbc-medicationrequest
* status = #draft
* intent = #proposal
* reportedBoolean = true
* medicationCodeableConcept = $rxnorm#205535 "PROzac 10 MG Oral Capsule"
* subject = Reference(rtpbc-patient-03a)
* authoredOn = "2019-11-01"
* requester = Reference(rtpbc-practitioner-03a)
* dosageInstruction.text = "Take 2 capsules once a day"
* dispenseRequest.quantity.value = 60
* dispenseRequest.quantity.unit = "{Each}"
* dispenseRequest.expectedSupplyDuration = 30 'd' "days"
* dispenseRequest.performer = Reference(rtpbc-organization-03a)
* substitution.allowedBoolean = false

Instance: rtpbc-practitioner-03a
InstanceOf: $us-core-practitioner
Usage: #inline
* meta.profile = $us-core-practitioner
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "1234567890"
* name.family = "Johnson"

Instance: rtpbc-organization-03a
InstanceOf: rtpbc-pharmacy-organization
Usage: #inline
* meta.profile = $rtpbc-pharmacy-organization
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9876543210"
* active = true
* type = $pharmacy-type-cs#R "Retail"
* name = "Hometown Drug"
* telecom.system = #phone
* telecom.value = "6081234567"
* address.line = "900 9th Street"
* address.city = "Madison"
* address.state = "WI"
* address.postalCode = "53535"
* address.country = "US"

*/