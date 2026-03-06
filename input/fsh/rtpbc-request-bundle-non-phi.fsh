Profile: RtpbcRequestBundleNonPHI
Parent: Bundle
Id: rtpbc-request-bundle-non-phi
Title: "RTPBC Request Bundle - Non-PHI"
Description: "This profile provides minimal, non-persoanlly-identifiable content for submission in an RTPBC request to data sources that can provide benefit or price information without receiving patient details."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2025-12-11T00:00:00-05:00"
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
* entry 2..* MS
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
    pharmacy 0..1 MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $rtpbc-request-messageheader-non-phi
* entry[claim].resource 1..1 MS
* entry[claim].resource only $rtpbc-request-claim-non-phi
* entry[pharmacy].resource 1..1 MS
* entry[pharmacy].resource only $rtpbc-pharmacy-organization

// -----------
// Non-PHI request 1
// -----------

Instance: rtpbc-bundle-request-non-phi-1
InstanceOf: rtpbc-request-bundle-non-phi
Usage: #example
Description: "An example non-PHI RTPBC Request"
* meta.profile = $rtpbc-request-bundle-non-phi
* type = #message
* timestamp = "2025-11-15T13:10:13-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-request-non-phi-1"
* entry[=].resource = rtpbc-messageheader-request-non-phi-1
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-non-phi-1"
* entry[=].resource = rtpbc-claim-non-phi-1

Instance: rtpbc-messageheader-request-non-phi-1
InstanceOf: rtpbc-request-messageheader-non-phi
Usage: #inline
* meta.profile = $rtpbc-request-messageheader-non-phi
* eventCoding = $rtpbc-event-type-cs#rtpbc-request-non-phi "RTPBC Non-PHI Request"
* source.name = "MyPatientApp"
* source.endpoint = "http://example.org/MyPatientApp"
* focus = Reference(http://example.org/my-app/Claim/rtpbc-claim-non-phi-1)
* definition = $rtpbc-request-non-phi


Instance: rtpbc-claim-non-phi-1
InstanceOf: rtpbc-request-claim-non-phi
Description: "An example of the non-PHI RTPBC request resource (Claim)"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-request-claim-non-phi"
* identifier.value = "rtpbc-non-phi-1"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* patient.extension[data-masked].valueCode = #masked
* created = "2025-11-01T11:20:54-05:00"
* provider.extension[preferred-pharmacy-postal-code].valueString = "55401"
* provider.display = "Pharmacies in ZIP Code 55401"
* priority = $processpriority-cs#normal "Normal"
* insurance.sequence = 1
* insurance.focal = false
* insurance.coverage.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* insurance.coverage.extension[data-masked].valueCode = #masked
* item.sequence = 1
* item.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* item.productOrService.text = "Prozac 10mg Capsule"
* item.quantity.value = 60
* item.quantity.unit = "{Each}"


// -----------
// Non-PHI request 2 - using non-US Core medication request profile
// -----------

Instance: rtpbc-bundle-request-non-phi-2
InstanceOf: rtpbc-request-bundle-non-phi
Usage: #example
Description: "An example non-PHI RTPBC Request"
* meta.profile = $rtpbc-request-bundle-non-phi
* type = #message
* timestamp = "2025-11-15T13:10:13-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-request-non-phi-2"
* entry[=].resource = rtpbc-messageheader-request-non-phi-2
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-non-phi-2"
* entry[=].resource = rtpbc-claim-non-phi-2
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03"
* entry[=].resource = rtpbc-organization-03

Instance: rtpbc-messageheader-request-non-phi-2
InstanceOf: rtpbc-request-messageheader-non-phi
Usage: #inline
* meta.profile = $rtpbc-request-messageheader-non-phi
* eventCoding = $rtpbc-event-type-cs#rtpbc-request-non-phi "RTPBC Non-PHI Request"
* source.name = "MyPatientApp"
* source.endpoint = "http://example.org/MyPatientApp"
* focus = Reference(http://example.org/my-app/Claim/rtpbc-claim-non-phi-2)
* definition = $rtpbc-request-non-phi


Instance: rtpbc-claim-non-phi-2
InstanceOf: rtpbc-request-claim-non-phi
Description: "An example of the non-PHI RTPBC request resource (Claim)"
* meta.profile = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-request-claim-non-phi"
* identifier.value = "rtpbc-claim-non-phi-2"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* patient.extension[data-masked].valueCode = #masked
* created = "2025-11-01T11:20:54-05:00"
* provider = Reference(Organization/rtpbc-organization-03)
* priority = $processpriority-cs#normal "Normal"
* insurance.sequence = 1
* insurance.focal = false
* insurance.coverage.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* insurance.coverage.extension[data-masked].valueCode = #masked
* item.sequence = 1
* item.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* item.productOrService.text = "Prozac 10mg Capsule"
* item.quantity.value = 60
* item.quantity.unit = "{Each}"
