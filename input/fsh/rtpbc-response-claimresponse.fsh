Profile: RtpbcResponseClaimResponse
Parent: ClaimResponse
Id: rtpbc-response-claimresponse
Title: "RTPBC Response Using ClaimResponse"
Description: "This profile constrains the ClaimResponse resource to serve as the RTPBC Response in the consumer real-time pharmacy benefit check process. It uses the ClaimResponse's \"predetermination\" processing mode"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2020-05-23T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* id MS
* id ^label = "Unique ClaimResponse Resource Identifier"
* id ^short = "Unique ClaimResponse Resource Identifier"
* id ^definition = "Unique ClaimResponse Resource Identifier assigned by the responding payer/PBM"
* id ^min = 0
* identifier 1.. MS
* identifier ^label = "RTPBC Response Identifier"
* identifier ^short = "RTPBC Response Identifier"
* identifier.value 1.. MS
* identifier.value ^label = "Unique RTPBC response ID"
* identifier.value ^short = "Unique RTPBC response ID"
* identifier.value ^definition = "An identifier for each RTPBC response that is assigned by and unique to the reponder"
* status 1.. MS
* status = #active (exactly)
* status ^label = "Response status"
* status ^short = "Response status"
* status ^definition = "The status of this response (active)"
* status ^comment = "Value is always 'active'"
* type MS
* type ^label = "Requested Service Type"
* type ^short = "Requested Service Type"
* type ^definition = "The type of service for which pricing and coverage predetermination is being requested"
* type ^comment = "Value is always 'pharmacy'"
* type.coding 1..1 MS
* type.coding.system 1..1 MS
* type.coding.system = $claim-type-cs (exactly)
* type.coding.code 1..1 MS
* type.coding.code = #pharmacy (exactly)
* type.coding.display 1..1 MS
* type.coding.display = "Pharmacy" (exactly)
* use = #predetermination (exactly)
* use MS
* use ^label = "Processing Mode"
* use ^short = "Processing Mode"
* use ^definition = "The mode of processing being performed by the payer/PBM"
* use ^comment = "Value is always 'predetermination'"
* patient only Reference($rtpbc-patient)
* patient MS
* patient ^label = "Response Patient Information"
* patient ^short = "Response Patient Information"
* patient ^definition = "Limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process"
* patient ^comment = "Echo the Patient resource received in the request"
* insurer MS
* insurer.identifier 1.. MS
* insurer.identifier.value 1.. MS
* insurer.identifier.value ^label = "Payer ID"
* insurer.identifier.value ^short = "Payer ID"
* request 1.. MS
* request ^label = "Submitter's RTPBC Request ID"
* request ^short = "Submitter's RTPBC Request ID"
* request ^definition = "The RTPBC Request ID contained in the associated request"
* request.identifier 1.. MS
* request.identifier.value 1.. MS
* request.identifier.value ^label = "RTPBC Request ID"
* request.identifier.value ^short = "RTPBC Request ID"
* request.identifier.value ^definition = "The RTPBC Request ID contained in the associated request"
* request.identifier.value ^comment = "Populate with the Claim.identifier.value from the associated request"
* outcome MS
* outcome ^label = "Processing Outcome"
* outcome ^short = "Processing Outcome"
* outcome ^definition = "The outcome of processing. Either 'complete' (finished without errors) or 'error' (processing could not complete). The outcome is 'processed' if processing completes with a coverage determination, including when it is determined that the requested product is not covered. Otherwise, the outcome = 'error'. \n\n**Note: If a system or communication error occurs, an OperationOutcome is returned instead of a ClaimResponse**"
* outcome ^comment = "If the outcome = 'error', the .error composite must be populated."
* disposition MS
* disposition ^label = "Completed Note"
* disposition ^short = "Completed Note"
* disposition ^definition = "Note providing clarifying information and/or support contact information. Available for both 'completed' and 'error' outcomes."
* disposition ^comment = "The responding payer/PBM determines when and how to populate.Recommended that a patient help desk phone number be included."
* disposition ^requirements = "Corresponds to the Help Desk Support elements in the NCPDP RTPBC response message."
* item MS
* item ^label = "Requested Product and Pharmacy"
* item ^short = "Requested Product and Pharmacy"
* item ^definition = "Composite containing cost and coverage for the requested product and pharmacy."
* item ^comment = "SHALL be populated when the .outcome = 'complete'."
* item.extension contains $rtpbc-benefitRestriction named benefitRestriction 0..* MS
* item.extension[benefitRestriction] ^short = "Benefit Restriction (Extension)"
* item.extension[benefitRestriction] ^definition = "This extension conveys benefit restrictions that may apply to a prescription product and pharmacy combination."
* item.extension[benefitRestriction] ^isModifier = false
* item.extension contains $rtpbc-formularyStatus named formularyStatus 0..* MS
* item.extension[formularyStatus] ^short = "Formulary Status (Extension)"
* item.extension[formularyStatus] ^definition = "This extension conveys the formulary status that applies to the product."
* item.extension[formularyStatus] ^isModifier = false
* item.itemSequence MS
* item.itemSequence ^definition = "Indicates that the information in this .item composite relates to the requested product and pharmacy."
* item.noteNumber MS
* item.noteNumber ^label = "Determination Note Number"
* item.noteNumber ^short = "Determination Note Number"
* item.noteNumber ^definition = "Number referencing a Determination Note (.processNote) explaining the coverage status for this product + pharmacy combination."
* item.adjudication MS
* item.adjudication ^label = "Requested Product and Pharmacy Determination"
* item.adjudication ^short = "Requested Product and Pharmacy Determination"
* item.adjudication ^definition = "Patient cost and coverage details for the requested product and pharmacy."
* item.adjudication.category MS
* item.adjudication.category from $rtpbc-patient-pay-type-vs (required)
* item.adjudication.category ^label = "Patient Pay Component"
* item.adjudication.category ^short = "Patient Pay Component"
* item.adjudication.category ^definition = "Identifies a component of the patient's financial responsibility for the product cost."
* item.adjudication.category ^comment = "At least one .adjudication must contain a .category with the .code value 'total', representing the patient's total financial responsibility for the product. Note that returned balance amounts (e.g., accumulated deductible or remaining deductible) are calculated from the current member balance and reflect only the effect of the associated RTPBC request"
* item.adjudication.category ^requirements = "Corresponds to NCPDP C95-KQ Patient Pay Component Qualifier."
* item.adjudication.category ^binding.description = "RTPBC Patient Pay Categories"
* item.adjudication.amount 1.. MS
* item.adjudication.amount ^label = "Patient Pay Component Amount"
* item.adjudication.amount ^short = "Patient Pay Component Amount"
* item.adjudication.amount ^definition = "The amount associated with the Patient Pay Component (.adjudication.category)."
* item.adjudication.amount.value 1.. MS
* item.adjudication.amount.value ^label = "Patient Pay Amount Value"
* item.adjudication.amount.value ^short = "Patient Pay Amount Value"
* item.adjudication.amount.value ^definition = "The patient pay component amount in terms of the specified currency."
* item.adjudication.amount.currency 1.. MS
* item.adjudication.amount.currency from Currencies (required)
* item.adjudication.amount.currency ^label = "Patient Pay Amount Currency"
* item.adjudication.amount.currency ^short = "Patient Pay Amount Currency"
* item.adjudication.amount.currency ^binding.description = "Currencies"
* addItem MS
* addItem.extension contains
    $rtpbc-isAlternative named isAlternative 1..1 MS and
    $rtpbc-benefitRestriction named benefitRestriction 0..* MS
* addItem.extension[isAlternative] ^short = "Is Alternative (Extension)"
* addItem.extension[isAlternative] ^definition = "This extension indicates that this added line item is to be interpreted as one of possibly multiple alternatives to the requested product or service. When isAlternative is true, the added line item is to be considered independently from any other added line items associated with the requested product or service"
* addItem.extension[isAlternative] ^comment = "Set to true in all real-time pharmacy benefit check response .addItems."
* addItem.extension[isAlternative] ^isModifier = false
* addItem.extension[benefitRestriction] ^short = "Benefit Restriction (Extension)"
* addItem.extension[benefitRestriction] ^definition = "This extension conveys benefit restrictions that may apply to a prescription product and pharmacy combination."
* addItem.extension[benefitRestriction] ^base.path = "DomainResource.extension"
* addItem.extension[benefitRestriction] ^base.min = 0
* addItem.extension[benefitRestriction] ^base.max = "*"
* addItem.extension[benefitRestriction] ^isModifier = false
* addItem.extension contains $rtpbc-formularyStatus named formularyStatus 0..* MS
* addItem.extension[formularyStatus] ^short = "Formulary Status (Extension)"
* addItem.extension[formularyStatus] ^definition = "This extension conveys the formulary status that applies to the product."
* addItem.extension[formularyStatus] ^isModifier = false
* addItem.itemSequence 1.. MS
* addItem.itemSequence ^label = "Associated request Item Sequence"
* addItem.itemSequence ^short = "Associated request Item Sequence"
* addItem.itemSequence ^definition = "Indicates that the information in this .item composite is an alternative to the requested product and pharmacy."
* addItem.itemSequence ^comment = "Because a maximum of one product is submitted per request, this value is always '1'."
* addItem.provider 1.. MS
* addItem.provider only Reference($rtpbc-pharmacy-organization)
* addItem.provider ^label = "Priced Pharmacy"
* addItem.provider ^short = "Priced Pharmacy"
* addItem.provider ^definition = "Reference to an Organization resource representing the priced pharmacy"
* addItem.provider.reference 1.. MS
* addItem.provider.reference ^label = "Reference to Priced Pharmacy"
* addItem.provider.reference ^short = "Reference to Priced Pharmacy"
* addItem.productOrService MS
* addItem.productOrService from $rtpbc-prescribable-product-code-vs (extensible)
* addItem.productOrService ^label = "Product"
* addItem.productOrService ^short = "Product"
* addItem.productOrService ^definition = "A product identifier for the medication. Either an NDC11 or an RxNorm code for a prescribable product (representing drug name, strength and dose form)"
* addItem.productOrService ^comment = "The NDC11 is an 11-digit normalized format consisting of a 5-digit labeler segment, 4-digit product segment, and 2-digit package segment, with no dashes"
* addItem.productOrService ^binding.description = "RTPBC prescribable product codes (NDC11 and RxNorm)"
* addItem.productOrService.coding 1.. MS
* addItem.productOrService.coding.system 1.. MS
* addItem.productOrService.coding.code 1.. MS
* addItem.productOrService.coding.display 1.. MS
* addItem.productOrService.coding.display ^label = "Product Description"
* addItem.productOrService.coding.display ^short = "Product Description"
* addItem.productOrService.coding.display ^definition = "The full prescribable product name, including drug name, strength and dose form. The drug name equals the brand name if the branded product is desired."
* addItem.quantity 1.. MS
* addItem.quantity ^label = "Priced Quantity"
* addItem.quantity ^short = "Priced Quantity"
* addItem.quantity.value 1.. MS
* addItem.quantity.value ^label = "Quantity in Billing Units"
* addItem.quantity.value ^short = "Quantity in Billing Units"
* addItem.quantity.value ^definition = "The prescribed quantity in terms of the applicable billing unit of measure."
* addItem.quantity.unit 1.. MS
* addItem.quantity.unit from $rtpbc-billing-unit-vs (extensible)
* addItem.quantity.unit ^label = "Billing unit of measure"
* addItem.quantity.unit ^short = "Billing unit of measure"
* addItem.quantity.unit ^definition = "Pharmacy metric billing unit: GM (gram), ML (milliliter) or EA (each)"
* addItem.quantity.unit ^binding.description = "Billing quantity unit of measure"
* addItem.noteNumber MS
* addItem.noteNumber ^label = "Determination Note Number"
* addItem.noteNumber ^short = "Determination Note Number"
* addItem.noteNumber ^definition = "Number referencing a Determination Note (.processNote) explaining the coverage status for this product + pharmacy combination."
* addItem.adjudication MS
* addItem.adjudication ^label = "Alternative Product and Pharmacy Determination"
* addItem.adjudication ^short = "Alternative Product and Pharmacy Determination"
* addItem.adjudication ^definition = "Patient cost and coverage details for an alternative product and pharmacy combination."
* addItem.adjudication.category MS
* addItem.adjudication.category from $rtpbc-patient-pay-type-vs (required)
* addItem.adjudication.category ^label = "Patient Pay Component"
* addItem.adjudication.category ^short = "Patient Pay Component"
* addItem.adjudication.category ^definition = "Identifies a component of the patient's financial responsibility for the product cost."
* addItem.adjudication.category ^comment = "At least one .adjudication must contain a .category with the .code value 'total', representing the patient's total financial responsibility for the product"
* addItem.adjudication.category ^requirements = "Corresponds to NCPDP C95-KQ Patient Pay Component Qualifier."
* addItem.adjudication.category ^binding.description = "RTPBC Patient Pay Categories"
* addItem.adjudication.amount 1.. MS
* addItem.adjudication.amount ^label = "Patient Pay Component Amount"
* addItem.adjudication.amount ^short = "Patient Pay Component Amount"
* addItem.adjudication.amount ^definition = "The amount associated with the Patient Pay Component (.adjudication.category)."
* addItem.adjudication.amount.value 1.. MS
* addItem.adjudication.amount.value ^label = "Patient Pay Amount Value"
* addItem.adjudication.amount.value ^short = "Patient Pay Amount Value"
* addItem.adjudication.amount.value ^definition = "The patient pay component amount in terms of the specified currency."
* addItem.adjudication.amount.currency 1.. MS
* addItem.adjudication.amount.currency from Currencies (required)
* addItem.adjudication.amount.currency ^label = "Patient Pay Amount Currency"
* addItem.adjudication.amount.currency ^short = "Patient Pay Amount Currency"
* addItem.adjudication.amount.currency ^binding.description = "Currencies"
* processNote MS
* processNote ^label = "Determination Note"
* processNote ^short = "Determination Note"
* processNote ^definition = "Additional coverage determination information for a product / pharmacy combination."
* processNote.number 1.. MS
* processNote.number ^label = "Determination Note Number"
* processNote.number ^short = "Determination Note Number"
* processNote.number ^comment = "Links to the .noteNumber elements in .item and .addItem"
* processNote.text 1.. MS
* processNote.text ^label = "Determination Note Text"
* processNote.text ^short = "Determination Note Text"
* error MS
* error ^label = "Error Information"
* error ^short = "Error Information"
* error ^comment = "Must be populated when .outcome = 'error'"
* error.code MS
* error.code from $rtpbc-error-code-vs (preferred)
* error.code ^label = "Reject Reason"
* error.code ^short = "Reject Reason"
* error.code ^definition = "A code identifying the reason that processing could not be completed."
* error.code ^binding.description = "RTPBC Error Codes"
* error.code.coding 1.. MS
* error.code.coding.system 1.. MS
* error.code.coding.code 1.. MS
* error.code.coding.code ^label = "Reject Code"
* error.code.coding.code ^short = "Reject Code"
* error.code.coding.display 1.. MS
* error.code.text MS
* error.code.text ^label = "Reject Message"
* error.code.text ^short = "Reject Message"
* error.code.text ^definition = "Clarification of the reject cause."

//-------------------------

Instance: rtpbc-claim-response-not-covered
InstanceOf: rtpbc-response-claimresponse
Usage: #example
Description: "This is an example of response stating that the requested drug is not covered"
* meta.profile = $rtpbc-response-claimresponse
* identifier.value = "rtpbc-03-response-c-r"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(Patient/rtpbc-patient-03)
* created = "2019-11-01T11:20:59-05:00"
* insurer.identifier.value = "Pharmacy Plans US"
* request.identifier.value = "rtpbc-03"
* outcome = #complete
* disposition = "Processed successfully"
* item.extension.url = $rtpbc-benefitRestriction
* item.extension.valueCoding = $rtpbc-benefit-restriction-cs#not-covered "Not covered"
* item.itemSequence = 1
* item.adjudication.category = $rtpbc-patient-pay-type-cs#eligible "Eligible amount"
* item.adjudication.amount.value = 0
* item.adjudication.amount.currency = #USD
* addItem.extension[0].url = $rtpbc-isAlternative
* addItem.extension[=].valueBoolean = true
* addItem.extension[+].url = $rtpbc-benefitRestriction
* addItem.extension[=].valueCoding = $rtpbc-benefit-restriction-cs#prior-auth "Prior authorization required"
* addItem.extension[+].url = $rtpbc-benefitRestriction
* addItem.extension[=].valueCoding = $rtpbc-benefit-restriction-cs#quantity-limit "Quantity limit applies"
* addItem.itemSequence = 1
* addItem.provider = Reference(Organization/rtpbc-organization-03wh)
* addItem.productOrService = $rxnorm#1734642 "elbasvir 50 MG / grazoprevir 100 MG Oral Tablet [Zepatier]"
* addItem.quantity.value = 28
* addItem.quantity.unit = "{Each}"
* addItem.noteNumber = 1
* addItem.adjudication[0].category = $rtpbc-patient-pay-type-cs#copay "Copay"
* addItem.adjudication[=].amount.value = 405
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#coinsurance "Per prescription coinsurance"
* addItem.adjudication[=].amount.value = 469
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#total "Total patient responsibility"
* addItem.adjudication[=].amount.value = 874
* addItem.adjudication[=].amount.currency = #USD
* processNote.number = 1
* processNote.text = "Quantity limit: 28 tablets per month"

/*
Instance: rtpbc-claim-response-03
InstanceOf: rtpbc-response-claimresponse
Usage: #example
* meta.profile = $rtpbc-response-claimresponse
* identifier.value = "rtpbc-03-response"
* status = #active
* type = $claim-type-cs#pharmacy "Pharmacy"
* use = #predetermination
* patient = Reference(Patient/rtpbc-patient-03)
* created = "2019-11-01T11:20:59-05:00"
* insurer.identifier.value = "Pharmacy Plans US"
* request.identifier.value = "rtpbc-03"
* outcome = #complete
* disposition = "Processed successfully"
* item.extension.url = $rtpbc-benefitRestriction
* item.extension.valueCoding = $rtpbc-benefit-restriction-cs#prior-auth "Prior authorization required"
* item.extension.url = $rtpbc-formularyStatus
* item.extension.valueCoding = $rtpbc-formulary-status-cs#O "On Formulary"
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
* item.extension.url = $rtpbc-formularyStatus
* item.extension.valueCoding = $rtpbc-formulary-status-cs#P "On Formulary/Preferred"
* addItem.itemSequence = 1
* addItem.provider = Reference(Organization/rtpbc-organization-03m)
* addItem.productOrService = $rxnorm#205535 "fluoxetine 10 MG Oral Capsule [Prozac]"
* addItem.quantity.value = 180
* addItem.quantity.unit = "{Each}"
* addItem.adjudication[0].category = $rtpbc-patient-pay-type-cs#copay "Copay"
* addItem.adjudication[=].amount.value = 10
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[0].category = $rtpbc-patient-pay-type-cs#deductible "Deductible"
* addItem.adjudication[=].amount.value = 20
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[0].category = $rtpbc-patient-pay-type-cs#accumulated-deductible "Accumulated deductible"
* addItem.adjudication[=].amount.value = 195
* addItem.adjudication[0].category = $rtpbc-patient-pay-type-cs#remaining-deductible "Remaining deductible"
* addItem.adjudication[=].amount.value = 305
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#coinsurance "Per prescription coinsurance"
* addItem.adjudication[=].amount.value = 30
* addItem.adjudication[=].amount.currency = #USD
* addItem.adjudication[+].category = $rtpbc-patient-pay-type-cs#total "Total patient responsibility"
* addItem.adjudication[=].amount.value = 70
* addItem.adjudication[=].amount.currency = #USD

*/