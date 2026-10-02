// ~~~~~~~~~~~~~~~~~~~~~~
// initial message from client
// ~~~~~~~~~~~~~~~~~~~~~~
Instance: rtpbc-via-intermediary-request-bundle-1
InstanceOf: rtpbc-request-bundle
Usage: #example
Description: "An example RTPBC request submitted through an intermediary. Step 1, request from client to intermediary."
* meta.profile = $rtpbc-request-bundle
* type = #message
* timestamp = "2026-11-01T13:00:03-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-via-intermediary-request-messageheader-1"
* entry[=].resource = rtpbc-via-intermediary-request-messageheader-1
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-01"
* entry[=].resource = rtpbc-claim-01
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-01"
* entry[=].resource = rtpbc-patient-01
* entry[+].fullUrl = "http://example.org/my-app/Coverage/rtpbc-coverage-01"
* entry[=].resource = rtpbc-coverage-01
* entry[+].fullUrl = "http://example.org/my-app/MedicationRequest/rtpbc-medicationrequest-01"
* entry[=].resource = rtpbc-medicationrequest-01
* entry[+].fullUrl = "http://example.org/my-app/Practitioner/rtpbc-practitioner-01"
* entry[=].resource = rtpbc-practitioner-01
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-01"
* entry[=].resource = rtpbc-organization-01

Instance: rtpbc-via-intermediary-request-messageheader-1
InstanceOf: rtpbc-request-messageheader
Usage: #inline
* meta.profile = $rtpbc-request-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-request "RTPBC Request"
* source.name = "my-app"
* source.endpoint = "http://example.org/my-app"
* focus = Reference(http://example.org/my-app/Claim/rtpbc-claim-01)
* definition = $rtpbc-request



// ~~~~~~~~~~~~~~~~~~~~~~
// message to payer
// ~~~~~~~~~~~~~~~~~~~~~~
Instance: rtpbc-via-intermediary-request-bundle-2
InstanceOf: rtpbc-request-bundle
Usage: #example
Description: "An example RTPBC request submitted through an intermediary. Step 2, request from intermediary to payer. All content is forwarded."
* meta.profile = $rtpbc-request-bundle
* type = #message
* timestamp = "2026-11-01T13:00:03-04:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-via-intermediary-request-messageheader-2"
* entry[=].resource = rtpbc-via-intermediary-request-messageheader-2
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-01"
* entry[=].resource = rtpbc-claim-01
* entry[+].fullUrl = "http://example.org/my-app/Patient/rtpbc-patient-01"
* entry[=].resource = rtpbc-patient-01
* entry[+].fullUrl = "http://example.org/my-app/Coverage/rtpbc-coverage-01"
* entry[=].resource = rtpbc-coverage-01
* entry[+].fullUrl = "http://example.org/my-app/MedicationRequest/rtpbc-medicationrequest-01"
* entry[=].resource = rtpbc-medicationrequest-01
* entry[+].fullUrl = "http://example.org/my-app/Practitioner/rtpbc-practitioner-01"
* entry[=].resource = rtpbc-practitioner-01
* entry[+].fullUrl = "http://example.org/my-app/Organization/rtpbc-organization-01"
* entry[=].resource = rtpbc-organization-01

Instance: rtpbc-via-intermediary-request-messageheader-2
InstanceOf: rtpbc-request-messageheader
Usage: #inline
* meta.profile = $rtpbc-request-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-request "RTPBC Request"
* source.name = "Intermediary1"
* source.endpoint = "http://example.org/intermediary1"
* focus = Reference(http://example.org/my-app/Claim/rtpbc-claim-01)
* definition = $rtpbc-request


// ~~~~~~~~~~~~~~~~~~~~~~
// message to discount source
// ~~~~~~~~~~~~~~~~~~~~~~

Instance: rtpbc-via-intermediary-request-bundle-3
InstanceOf: rtpbc-request-bundle-non-phi
Usage: #example
Description: "An example RTPBC request submitted through an intermediary. Step 3, request from intermediary to discount pricing source. Personal health information is removed before forwarding."
* meta.profile = $rtpbc-request-bundle-non-phi
* type = #message
* timestamp = "2026-11-01T13:00:03-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-via-intermediary-request-messageheader-3"
* entry[=].resource = rtpbc-via-intermediary-request-messageheader-3
* entry[+].fullUrl = "http://example.org/my-app/Claim/rtpbc-claim-non-phi-1"
* entry[=].resource = rtpbc-claim-non-phi-1

Instance: rtpbc-via-intermediary-request-messageheader-3
InstanceOf: rtpbc-request-messageheader-non-phi
Usage: #inline
* meta.profile = $rtpbc-request-messageheader-non-phi
* eventCoding = $rtpbc-event-type-cs#rtpbc-request-non-phi "RTPBC Non-PHI Request"
* source.name = "Intermediary1"
* source.endpoint = "http://example.org/intermediary1"
* focus = Reference(http://example.org/my-app/Claim/rtpbc-claim-non-phi-1)
* definition = $rtpbc-request-non-phi

// ~~~~~~~~~~~~~~~~~~~~~~
// response from payer
// ~~~~~~~~~~~~~~~~~~~~~~
Instance: rtpbc-via-intermediary-response-bundle-1
InstanceOf: rtpbc-response-bundle
Usage: #example
Description: "An example RTPBC request submitted through an intermediary. Step 4, response from the payer."
* meta.profile = $rtpbc-response-bundle
* type = #message
* timestamp = "2026-11-01T13:00:05-05:00"
* entry[0].fullUrl = "http://example.org/PharmacyBenefitsCo/fhir/MessageHeader/rtpbc-via-intermediary-messageheader-response-1"
* entry[=].resource = rtpbc-via-intermediary-messageheader-response-1
* entry[+].fullUrl = "http://example.org/PharmacyBenefitsCo/fhir/ClaimResponse/rtpbc-claim-response-01"
* entry[=].resource = rtpbc-claim-response-01
* entry[+].fullUrl = "http://example.org/PharmacyBenefitsCo/fhir/Patient/rtpbc-patient-01"
* entry[=].resource = rtpbc-patient-01
* entry[+].fullUrl = "http://example.org/PharmacyBenefitsCo/fhir/Organization/rtpbc-organization-03m"
* entry[=].resource = rtpbc-organization-03m

Instance: rtpbc-via-intermediary-messageheader-response-1
InstanceOf: rtpbc-response-messageheader
Usage: #inline
* meta.profile = $rtpbc-response-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-response "RTPBC Response"
* source.name = "PharmacyBenefitsCompany"
* source.endpoint = "http://example.org/PharmacyBenefitsCo/fhir"
* response.identifier = "rtpbc-via-intermediary-request-messageheader-1"
* response.code = #ok
* focus = Reference(http://example.org/PharmacyBenefitsCo/fhir/ClaimResponse/rtpbc-claim-response-01)
* definition = $rtpbc-response



// ~~~~~~~~~~~~~~~~~~~~~~
// response from discount source
// ~~~~~~~~~~~~~~~~~~~~~~
Instance: rtpbc-via-intermediary-response-bundle-2
InstanceOf: rtpbc-response-bundle-non-phi
Usage: #example
Description: "An example RTPBC request submitted through an intermediary. Step 5, response from the discount price source."
* meta.profile = $rtpbc-response-bundle-non-phi
* type = #message
* timestamp = "2026-11-01T13:00:05-06:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-via-intermediary-messageheader-response-2"
* entry[=].resource = rtpbc-via-intermediary-messageheader-response-2
* entry[+].fullUrl = "http://example.org/GoodPricing/fhir/ClaimResponse/rtpbc-claim-response-discount-card"
* entry[=].resource = rtpbc-claim-response-discount-card
* entry[+].fullUrl = "http://example.org/GoodPricing/fhir/Coverage/rtpbc-coverage-non-phi-01"
* entry[=].resource = rtpbc-coverage-non-phi-01

Instance: rtpbc-via-intermediary-messageheader-response-2
InstanceOf: rtpbc-response-messageheader-non-phi
Usage: #inline
* meta.profile = $rtpbc-response-messageheader-non-phi
* eventCoding = $rtpbc-event-type-cs#rtpbc-response-non-phi "RTPBC Non-PHI Response"
* source.name = "GoodPricing"
* source.endpoint = "http://example.org/GoodPricing/fhir"
* response.identifier = "rtpbc-via-intermediary-request-messageheader-2"
* response.code = #ok
* focus = Reference(http://example.org/GoodPricing/fhir/ClaimResponse/rtpbc-claim-response-discount-card)
* definition = $rtpbc-response-non-phi


// ~~~~~~~~~~~~~~~~~~~~~~
// combined response from intermediary
// ~~~~~~~~~~~~~~~~~~~~~~

Instance: rtpbc-via-intermediary-response-bundle-3
InstanceOf: rtpbc-response-bundle
Usage: #example
Description: "An example RTPBC request submitted through an intermediary. Step 6, combined response returned from the intermediary to the original requester."
* meta.profile = $rtpbc-response-bundle
* type = #message
* timestamp = "2026-11-01T13:00:05-07:00"
* entry[0].fullUrl = "http://example.org/intermediary1/MessageHeader/rtpbc-via-intermediary-messageheader-response-3"
* entry[=].resource = rtpbc-via-intermediary-messageheader-response-3
* entry[+].fullUrl = "http://example.org/intermediary1/ClaimResponse/rtpbc-claim-response-combined"
* entry[=].resource = rtpbc-claim-response-combined
* entry[+].fullUrl = "http://example.org/intermediary1/Patient/rtpbc-patient-01"
* entry[=].resource = rtpbc-patient-01
* entry[+].fullUrl = "http://example.org/intermediary1/Organization/rtpbc-organization-03m"
* entry[=].resource = rtpbc-organization-03m
* entry[+].fullUrl = "http://example.org/intermediary1/Coverage/rtpbc-coverage-non-phi-01"
* entry[=].resource = rtpbc-coverage-non-phi-01

Instance: rtpbc-via-intermediary-messageheader-response-3
InstanceOf: rtpbc-response-messageheader
Usage: #inline
* meta.profile = $rtpbc-response-messageheader
* eventCoding = $rtpbc-event-type-cs#rtpbc-response "RTPBC Response"
* source.name = "Intermediary1"
* source.endpoint = "http://example.org/intermediary1"
* response.identifier = "rtpbc-via-intermediary-request-messageheader-1"
* response.code = #ok
* focus = Reference(http://example.org/intermediary1/ClaimResponse/rtpbc-claim-response-combined)
* definition = $rtpbc-response

Instance: rtpbc-claim-response-combined
InstanceOf: rtpbc-response-claimresponse
Usage: #example
Description: "An example RTPBC response combining content from the patient's insurer and a discount card source"
* meta.profile = $rtpbc-response-claimresponse
* identifier.value = "rtpbc-claim-response-combined"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(Patient/rtpbc-patient-01)
* created = "2026-11-01T13:00:05-07:00"
* insurer.identifier.value = "Pharmacy Plans US"
* request.identifier.value = "rtpbc-01"
* outcome = #complete
* disposition = "Processed successfully"
* item.extension[benefitRestriction].url = $rtpbc-benefitRestriction
* item.extension[benefitRestriction].valueCoding = $rtpbc-benefit-restriction-temporary-cs#prior-auth "Prior authorization required"
* item.extension[formularyStatus].url = $rtpbc-formularyStatus
* item.extension[formularyStatus].valueCoding = $ncpdp-formulary-status-cs#O "On Formulary"
* item.extension[preferenceLevel].url = $rtpbc-preferenceLevel
* item.extension[preferenceLevel].valuePositiveInt = 2
* item.extension[nextAvailableFillDate].url = $rtpbc-nextAvailableFillDate
* item.extension[nextAvailableFillDate].valueDate = "2026-12-20"
* item.itemSequence = 1
* item.adjudication[0].category = $rtpbc-patient-pay-type-temporary-cs#copay "Copay"
* item.adjudication[=].amount.value = 40
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#coinsurance "Per prescription coinsurance"
* item.adjudication[=].amount.value = 30
* item.adjudication[=].amount.currency = #USD
* item.adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#total "Total patient responsibility"
* item.adjudication[=].amount.value = 70
* item.adjudication[=].amount.currency = #USD
* addItem[0].extension[isAlternative].url = $rtpbc-isAlternative
* addItem[=].extension[isAlternative].valueBoolean = true
* addItem[=].extension[benefitRestriction].url = $rtpbc-benefitRestriction
* addItem[=].extension[benefitRestriction].valueCoding = $rtpbc-benefit-restriction-temporary-cs#covered "Covered"
* addItem[=].extension[formularyStatus].url = $rtpbc-formularyStatus
* addItem[=].extension[formularyStatus].valueCoding = $ncpdp-formulary-status-cs#P "On Formulary/Preferred"
* addItem[=].extension[preferenceLevel].url = $rtpbc-preferenceLevel
* addItem[=].extension[preferenceLevel].valuePositiveInt = 1
* addItem[=].itemSequence = 1
* addItem[=].noteNumber = 1
* addItem[=].provider = Reference(Organization/rtpbc-organization-03m)
* addItem[=].productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* addItem[=].quantity.value = 180
* addItem[=].quantity.unit = "{Each}"
* addItem[=].adjudication[0].category = $rtpbc-patient-pay-type-temporary-cs#copay "Copay"
* addItem[=].adjudication[=].amount.value = 10
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#deductible "Deductible"
* addItem[=].adjudication[=].amount.value = 20
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#accumulated-deductible "Accumulated deductible"
* addItem[=].adjudication[=].amount.value = 195
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#remaining-deductible "Remaining deductible"
* addItem[=].adjudication[=].amount.value = 305
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#coinsurance "Per prescription coinsurance"
* addItem[=].adjudication[=].amount.value = 30
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#total "Total patient responsibility"
* addItem[=].adjudication[=].amount.value = 70
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[+].extension[isAlternative].url = $rtpbc-isAlternative
* addItem[=].extension[isAlternative].valueBoolean = true
* addItem[=].extension[relatedCoverage].url = $rtpbc-relatedCoverage
* addItem[=].extension[relatedCoverage].valueReference = Reference(Coverage/rtpbc-coverage-non-phi-01)
* addItem[=].itemSequence = 1
* addItem[=].productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* addItem[=].quantity.value = 60
* addItem[=].quantity.unit = "{Each}"
* addItem[=].noteNumber = 1
* addItem[=].adjudication[0].category = $rtpbc-patient-pay-type-temporary-cs#cash-price "Full product cash price"
* addItem[=].adjudication[=].amount.value = 105
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#coupon-discount "Coupon discount amount"
* addItem[=].adjudication[=].amount.value = -20
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#total "Total patient responsibility"
* addItem[=].adjudication[=].amount.value = 85
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[+].extension[isAlternative].url = $rtpbc-isAlternative
* addItem[=].extension[isAlternative].valueBoolean = true
* addItem[=].extension[relatedCoverage].url = $rtpbc-relatedCoverage
* addItem[=].extension[relatedCoverage].valueReference = Reference(Coverage/rtpbc-coverage-non-phi-01)
* addItem[=].itemSequence = 1
* addItem[=].productOrService = $rxnorm#313990 "FLUoxetine 10 MG Oral Tablet"
* addItem[=].quantity.value = 60
* addItem[=].quantity.unit = "{Each}"
* addItem[=].adjudication[0].category = $rtpbc-patient-pay-type-temporary-cs#cash-price "Full product cash price"
* addItem[=].adjudication[=].amount.value = 50
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#coupon-discount "Coupon discount amount"
* addItem[=].adjudication[=].amount.value = -10
* addItem[=].adjudication[=].amount.currency = #USD
* addItem[=].adjudication[+].category = $rtpbc-patient-pay-type-temporary-cs#total "Total patient responsibility"
* addItem[=].adjudication[=].amount.value = 40
* addItem[=].adjudication[=].amount.currency = #USD
* processNote.number = 1
* processNote.text = "Source: GoodPricing"