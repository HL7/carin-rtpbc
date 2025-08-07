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
    pharmacy 0..* MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $rtpbc-response-messageheader
* entry[claimresponse].resource 1..1 MS
* entry[claimresponse].resource only $rtpbc-response-claimresponse
* entry[patient].resource 1..1 MS
* entry[patient].resource only $rtpbc-patient
* entry[pharmacy].resource 1..1 MS
* entry[pharmacy].resource only $rtpbc-pharmacy-organization

//---------------------------------

Instance: rtpbc-bundle-response-03-price-source
InstanceOf: rtpbc-response-bundle
Usage: #example
Description: "An example RTPBC response bundle produced by cash pricing source"
* meta.profile = $rtpbc-response-bundle
* type = #message
* timestamp = "2019-11-15T13:10:15-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-response-03ps"
* entry[=].resource = rtpbc-messageheader-response-03ps
* entry[+].fullUrl = "http://example.org/my-app/ClaimResponse/rtpbc-claim-response-03-price-source"
* entry[=].resource = rtpbc-claim-response-03-price-source
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-03ps"
* entry[=].resource = rtpbc-patient-03ps
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03ps"
* entry[=].resource = rtpbc-organization-03ps

Instance: rtpbc-messageheader-response-03ps
InstanceOf: rtpbc-response-messageheader
Usage: #inline
* meta.profile = $rtpbc-response-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-response "RTPBC Response"
* source.name = "GoodPricing"
* source.endpoint = "http://example.org/GoodPricing/fhir"
* response.identifier = "rtpbc-messageheader-request-03"
* response.code = #ok
* focus = Reference(http://example.org/my-app/ClaimResponse/rtpbc-claim-response-03-price-source)
* definition = $rtpbc-response

Instance: rtpbc-claim-response-03-price-source
InstanceOf: ClaimResponse
//Usage: #inline
Description: "An example response from a cash pricing source (ClaimResponse)"
* meta.profile = $rtpbc-response-claimresponse
* identifier.value = "rtpbc-03-response-price-source"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(rtpbc-patient-03ps)
* created = "2019-11-01T11:20:59-05:00"
* insurer.identifier.value = "GoodPricing"
* request.identifier.value = "rtpbc-03"
* outcome = #complete
* disposition = "Processed successfully"
* item.itemSequence = 1
* item.noteNumber = 1
* item.adjudication[0].category = $rtpbc-patient-pay-type-cs#cash-price "Full product cash price"
* item.adjudication[=].amount.value = 105
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $rtpbc-patient-pay-type-cs#coupon-discount "Coupon discount amount"
* item.adjudication[=].amount.value = -20
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $rtpbc-patient-pay-type-cs#total "Total patient responsibility"
* item.adjudication[=].amount.value = 85
* item.adjudication[=].amount.currency = #USD
* addItem.extension.url = "http://hl7.org/fhir/us/carin-rtpbc/StructureDefinition/rtpbc-isAlternative"
* addItem.extension.valueBoolean = true
* addItem.itemSequence = 1
* addItem.provider = Reference(rtpbc-organization-03ps)
* addItem.productOrService = $rxnorm#205535 "PROzac 10 MG Oral Capsule"
* addItem.quantity.value = 60
* addItem.quantity.unit = "{Each}"
* addItem.adjudication[0].category = $rtpbc-patient-pay-type-cs#cash-price "Full product cash price"
* addItem.adjudication[=].amount.value = 50
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#coupon-discount "Coupon discount amount"
* addItem.adjudication[=].amount.value = -10
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#total "Total patient responsibility"
* addItem.adjudication[=].amount.value = 40
* addItem.adjudication[=].amount.currency = #USD

Instance: rtpbc-patient-03ps
InstanceOf: rtpbc-patient
// Usage: #inline
Description: "An example RTPBC patient with minimal content"
* meta.profile = $rtpbc-patient
* identifier.type = $v2-0203#PI "Patient internal identifier"
* identifier.type.text = "Patient internal identifier"
* identifier.system = "http://example.org/MyPatientApp"
* identifier.value = "30455"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female
* birthDate = "1975-12-05"

Instance: rtpbc-organization-03ps
InstanceOf: rtpbc-pharmacy-organization
// Usage: #inline
Description: "An example RTPBC pharmacy"
* meta.profile = $rtpbc-pharmacy-organization
* identifier.system = $ncpdp-id
* identifier.value = "0999123"
* active = true
* type = $pharmacy-type-cs#R "Retail"
* name = "Home Drugs"
* telecom.system = #phone
* telecom.value = "5556057672"
* address.line = "101 1st St N"
* address.city = "Minneapolis"
* address.state = "MN"
* address.postalCode = "55401"

//--------------------------------

Instance: rtpbc-bundle-response-03-w-header
InstanceOf: rtpbc-response-bundle
Usage: #example
Description: "An example RTPBC response bundle produced by the patient's insurer"
* meta.profile = $rtpbc-response-bundle
* type = #message
* timestamp = "2019-11-15T13:10:15-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-response-03wh"
* entry[=].resource = rtpbc-messageheader-response-03wh
* entry[+].fullUrl = "http://example.org/my-app/ClaimResponse/rtpbc-claim-response-03wh"
* entry[=].resource = rtpbc-claim-response-03wh
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-03wh"
* entry[=].resource = rtpbc-patient-03wh
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03wh"
* entry[=].resource = rtpbc-organization-03wh

Instance: rtpbc-messageheader-response-03wh
InstanceOf: rtpbc-response-messageheader
Usage: #inline
//Description: "An example response MessageHeader"
* meta.profile = $rtpbc-response-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-response "RTPBC Response"
* source.name = "PharmacyBenefitsCompany"
* source.endpoint = "http://example.org/PharmacyBenefitsCo/fhir"
* response.identifier = "rtpbc-messageheader-request-03"
* response.code = #ok
* focus = Reference(http://example.org/my-app/ClaimResponse/rtpbc-claim-response-03wh)
* definition = $rtpbc-response

Instance: rtpbc-claim-response-03wh
InstanceOf: rtpbc-response-claimresponse
//Usage: #inline
Description: "An example of the primary RTPBC response resource containing patient out-of-pocket cost, benefit restrictions and an alternative (ClaimResponse)"
* meta.profile = $rtpbc-response-claimresponse
* identifier.value = "rtpbc-03-response"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(rtpbc-patient-03wh)
* created = "2019-11-01T11:20:59-05:00"
* insurer.identifier.value = "Pharmacy Plans US"
* request.identifier.value = "rtpbc-03"
* outcome = #complete
* disposition = "Processed successfully"
* item.extension.url = $rtpbc-benefitRestriction
* item.extension.valueCoding = $rtpbc-benefit-restriction-cs#prior-auth "Prior authorization required"
* item.itemSequence = 1
* item.adjudication[0].category = $rtpbc-patient-pay-type-cs#copay "Copay"
* item.adjudication[=].amount.value = 40
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $rtpbc-patient-pay-type-cs#coinsurance "Per prescription coinsurance"
* item.adjudication[=].amount.value = 30
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $rtpbc-patient-pay-type-cs#total "Total patient responsibility"
* item.adjudication[=].amount.value = 70
* item.adjudication[=].amount.currency = #USD
* addItem.extension[0].url = $rtpbc-isAlternative
* addItem.extension[=].valueBoolean = true
* addItem.extension[+].url = $rtpbc-benefitRestriction
* addItem.extension[=].valueCoding = $rtpbc-benefit-restriction-cs#covered "Covered"
* addItem.itemSequence = 1
* addItem.provider = Reference(rtpbc-organization-03wh)
* addItem.productOrService = $rxnorm#205535 "PROzac 10 MG Oral Capsule"
* addItem.quantity.value = 180
* addItem.quantity.unit = "{Each}"
* addItem.adjudication[0].category = $rtpbc-patient-pay-type-cs#copay "Copay"
* addItem.adjudication[=].amount.value = 20
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#coinsurance "Per prescription coinsurance"
* addItem.adjudication[=].amount.value = 30
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#total "Total patient responsibility"
* addItem.adjudication[=].amount.value = 50
* addItem.adjudication[=].amount.currency = #USD

Instance: rtpbc-patient-03wh
InstanceOf: rtpbc-patient
//Usage: #inline
Description: "Example RTPBC patient"
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

Instance: rtpbc-organization-03wh
InstanceOf: rtpbc-pharmacy-organization
Description: "An example of a mail service pharmacy"
//Usage: #inline
* meta.profile = $rtpbc-pharmacy-organization
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "5515515515"
* active = true
* type = $pharmacy-type-cs#M "Mail Order"
* name = "My Mail Service Pharmacy"
* telecom.system = #phone
* telecom.value = "5551234567"
* address.line = "10001 Oakland Road"
* address.city = "Milwaukee"
* address.state = "WI"
* address.postalCode = "54444"
* address.country = "US"
