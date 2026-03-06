Profile: RtpbcResponseBundleNonPHI
Parent: Bundle
Id: rtpbc-response-bundle-non-phi
Title: "RTPBC Response Bundle Non-PHI"
Description: "This profile provides minimal, non-persoanlly-identifiable content for data sources that can provide benefit or price information without receiving patient details."
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2026-02-17T00:00:00-05:00"
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
* entry 1..* MS
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
    pharmacy 0..* MS and
    coverage 0..* MS
* entry[messageheader].resource 1..1 MS
* entry[messageheader].resource only $rtpbc-response-messageheader-non-phi
* entry[claimresponse].resource 1..1 MS
* entry[claimresponse].resource only $rtpbc-response-claimresponse-non-phi
* entry[pharmacy].resource only $rtpbc-pharmacy-organization
* entry[coverage].resource 1..1 MS
* entry[coverage].resource only $rtpbc-coverage-non-phi

//-----------------------------------------------

Instance: rtpbc-bundle-response-discount-card
InstanceOf: rtpbc-response-bundle-non-phi
Usage: #example
Description: "An example non-PHI RTPBC Response containing discount card information"
* meta.profile = $rtpbc-response-bundle-non-phi
* type = #message
* timestamp = "2025-11-15T13:10:13-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-response-discount-card"
* entry[=].resource = rtpbc-messageheader-response-discount-card
* entry[+].fullUrl = "http://example.org/my-app/ClaimResponse/rtpbc-claim-response-discount-card"
* entry[=].resource = rtpbc-claim-response-discount-card
* entry[+].fullUrl = "http://example.org/my-app/Coverage/rtpbc-coverage-non-phi-01"
* entry[=].resource = rtpbc-coverage-non-phi-01



Instance: rtpbc-messageheader-response-discount-card
InstanceOf: rtpbc-response-messageheader-non-phi
Usage: #inline
* meta.profile = $rtpbc-response-messageheader-non-phi
* eventCoding = $rtpbc-event-type-cs#rtpbc-response-non-phi "RTPBC Non-PHI Response"
* source.name = "GoodPricing"
* source.endpoint = "http://example.org/GoodPricing/fhir"
* response.identifier = "rtpbc-messageheader-request-non-phi-1"
* response.code = #ok
* focus = Reference(http://example.org/my-app/ClaimResponse/rtpbc-claim-response-discount-card)
* definition = $rtpbc-response-non-phi

Instance: rtpbc-claim-response-discount-card
InstanceOf: rtpbc-response-claimresponse-non-phi
Usage: #example
Description: "An example response containing a discount card (with Coverage resource) and no personally-identifiable information"
* meta.profile = $rtpbc-response-claimresponse-non-phi
* identifier.value = "rtpbc-03-response-discount-card"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* patient.extension[data-masked].valueCode = #masked
* created = "2025-11-15T13:10:13-05:00"
* insurer.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* insurer.extension[data-masked].valueCode = #masked
* request.identifier.value = "rtpbc-03"
* outcome = #complete
* disposition = "Processed successfully"
* item.extension.url = $rtpbc-relatedCoverage
* item.extension[relatedCoverage].valueReference = Reference(Coverage/rtpbc-coverage-non-phi-01)
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
* addItem.extension.url = $rtpbc-relatedCoverage
* addItem.extension[relatedCoverage].valueReference = Reference(Coverage/rtpbc-coverage-non-phi-01)
* addItem.extension.url = $rtpbc-isAlternative
* addItem.extension[isAlternative].valueBoolean = true
* addItem.itemSequence = 1
* addItem.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
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


//------------------------------------------------------

Instance: rtpbc-bundle-response-price-source
InstanceOf: rtpbc-response-bundle-non-phi
Usage: #example
Description: "An example non-PHI RTPBC Response containing cash pricing"
* meta.profile = $rtpbc-response-bundle-non-phi
* type = #message
* timestamp = "2025-11-15T13:10:13-05:00"
* entry[0].fullUrl = "http://example.org/my-app/MessageHeader/rtpbc-messageheader-response-price-source"
* entry[=].resource = rtpbc-messageheader-response-price-source
* entry[+].fullUrl = "http://example.org/my-app/ClaimResponse/rtpbc-claim-response-price-source"
* entry[=].resource = rtpbc-claim-response-price-source


Instance: rtpbc-messageheader-response-price-source
InstanceOf: rtpbc-response-messageheader-non-phi
Usage: #inline
* meta.profile = $rtpbc-response-messageheader-non-phi
* eventCoding = $rtpbc-event-type-cs#rtpbc-response-non-phi "RTPBC Non-PHI Response"
* source.name = "GoodPricing"
* source.endpoint = "http://example.org/GoodPricing/fhir"
* response.identifier = "rtpbc-messageheader-request-non-phi-1"
* response.code = #ok
* focus = Reference(http://example.org/my-app/ClaimResponse/rtpbc-claim-response-price-source)
* definition = $rtpbc-response-non-phi

Instance: rtpbc-claim-response-price-source
InstanceOf: rtpbc-response-claimresponse-non-phi
Usage: #example
Description: "An example response from a cash pricing source, containing no personally-identifiable information"
* meta.profile = $rtpbc-response-claimresponse-non-phi
* identifier.value = "rtpbc-response-price-source"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* patient.extension[data-masked].valueCode = #masked
* created = "2025-11-15T13:10:13-05:00"
* insurer.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* insurer.extension[data-masked].valueCode = #masked
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
* addItem.extension.url = $rtpbc-isAlternative
* addItem.extension[isAlternative].valueBoolean = true
* addItem.itemSequence = 1
* addItem.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
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


