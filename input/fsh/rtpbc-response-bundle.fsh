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
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-03"
* entry[=].resource = rtpbc-patient-03
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-03m"
* entry[=].resource = rtpbc-organization-03m

Instance: rtpbc-messageheader-response-03wh
InstanceOf: rtpbc-response-messageheader
Usage: #inline
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
Usage: #inline
//Description: "An example of the primary RTPBC response resource containing patient out-of-pocket cost, benefit restrictions and an alternative (ClaimResponse)"
* meta.profile = $rtpbc-response-claimresponse
* identifier.value = "rtpbc-03-response"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(rtpbc-patient-03)
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
* addItem.provider = Reference(rtpbc-organization-03m)
* addItem.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
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

