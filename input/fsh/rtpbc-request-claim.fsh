Profile: RtpbcRequestClaim
Parent: Claim
Id: rtpbc-request-claim
Title: "RTPBC Request Using Claim"
Description: "This profile constrains the Claim resource so that it can serve as the RTPBC Request in the consumer real-time pharmacy benefit check process"
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
* id 1.. MS
* id ^label = "Unique Claim Resource Identifier"
* id ^short = "Unique Claim Resource Identifier"
* id ^definition = "Unique Claim Resource Identifier assigned by the submitting patient application"
* identifier 1..1 MS
* identifier ^label = "RTPBC request identifier"
* identifier ^short = "RTPBC request identifier"
* identifier.value 1.. MS
* identifier.value ^label = "Unique RTPBC request ID"
* identifier.value ^short = "Unique RTPBC request ID"
* identifier.value ^definition = "An identifier for each RTPBC request that is assigned by and unique to the submitter"
* status = #active (exactly)
* status MS
* status ^label = "Request status"
* status ^short = "Request status"
* status ^definition = "The status of this request (active)"
* status ^comment = "Value is always 'active'"
* type MS
* type ^label = "Requested Service Type"
* type ^short = "Requested Service Type"
* type ^definition = "The type of service for which pricing and coverage predetermination is being requested"
* type ^comment = "Value is always 'pharmacy'"
* type.coding 1..1 MS
* type.coding.system 1..1 MS
* type.coding.system = "http://terminology.hl7.org/CodeSystem/claim-type" (exactly)
* type.coding.code 1..1 MS
* type.coding.code = #pharmacy (exactly)
* type.coding.display 1..1 MS
* type.coding.display = "Pharmacy" (exactly)
* use = #predetermination (exactly)
* use MS
* use ^label = "Processing Mode"
* use ^short = "Processing Mode"
* use ^definition = "The mode of processing being requested of the payer/PBM"
* use ^comment = "Value is always 'predetermination'"
* patient only Reference($rtpbc-patient)
* patient MS
* patient ^label = "Request Patient Information"
* patient ^short = "Request Patient Information"
* patient ^definition = "Limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process"
* patient.reference 1..1 MS
* patient.reference ^label = "Patient Reference"
* patient.reference ^short = "Patient Reference"
* patient.reference ^definition = "Reference to a Patient resource"
* created MS
* created ^label = "Created DateTime"
* created ^short = "Created DateTime"
* created ^definition = "The date and time on which this RTBPC request was created"
* provider only Reference($rtpbc-pharmacy-organization)
* provider MS
* provider ^label = "Preferred Pharmacy"
* provider ^short = "Preferred Pharmacy"
* provider ^definition = "The patient's preferred pharmacy to be considered during creation of the response"
* provider.reference 1..1 MS
* provider.reference ^label = "Reference to Pharmacy Organization"
* provider.reference ^short = "Reference to Pharmacy Organization"
* provider.reference ^definition = "Reference to an Organization resource representing the patient's preferred pharmacy"
* priority MS
* priority ^label = "Processing priority"
* priority ^short = "Processing priority"
* priority ^definition = "The processing priority requested of the payer/PBM"
* priority ^comment = "All requests are responded to in real-time, without differentiated priority levels. Value is always 'normal'"
* priority.coding 1..1 MS
* priority.coding.system 1..1 MS
* priority.coding.system = "http://terminology.hl7.org/CodeSystem/processpriority" (exactly)
* priority.coding.code 1..1 MS
* priority.coding.code = #normal (exactly)
* priority.coding.display 1..1 MS
* priority.coding.display = "Normal" (exactly)
* prescription 1.. MS
* prescription only Reference($rtpbc-medicationrequest)
* prescription ^label = "Prescription Reference"
* prescription ^short = "Prescription Reference"
* prescription ^definition = "Reference to the pertinent prescription information in a MedicationRequest resource."
* prescription.reference 1.. MS
* careTeam 1..1 MS
* careTeam ^label = "Prescriber"
* careTeam ^short = "Prescriber"
* careTeam ^definition = "Prescriber reference"
* careTeam ^comment = "The careTeam represents the specific practitioner that prescribed the medication. Thus, a single careTeam element is included in the RTPBC request"
* careTeam ^requirements = "The specific practitioner that prescribed the medication."
* careTeam.sequence = 1 (exactly)
* careTeam.sequence MS
* careTeam.provider 1..1 MS
* careTeam.provider only Reference($us-core-practitioner)
* careTeam.provider ^label = "Prescriber"
* careTeam.provider ^short = "Prescriber"
* careTeam.provider ^definition = "Prescriber of the item being submitted"
* careTeam.provider.reference 1..1 MS
* careTeam.provider.reference ^label = "Prescriber Reference"
* careTeam.provider.reference ^short = "Prescriber Reference"
* careTeam.provider.reference ^definition = "Reference to a Practitioner resource that represents the prescriber"
* insurance 1..1 MS
* insurance ^label = "Pharmacy Coverage"
* insurance ^short = "Pharmacy Coverage"
* insurance ^definition = "The patient's pharmacy coverage information"
* insurance.sequence = 1 (exactly)
* insurance.sequence MS
* insurance.sequence ^comment = "Only one set of coverage is submitted in the request. Value is always '1'"
* insurance.focal = true (exactly)
* insurance.focal MS
* insurance.coverage 1..1 MS
* insurance.coverage only Reference($rtpbc-coverage)
* insurance.coverage ^label = "Pharmacy Coverage Reference"
* insurance.coverage ^short = "Pharmacy Coverage Reference"
* insurance.coverage ^definition = "Reference to a Coverage resource containing identification of the patient's pharmacy coverage"
* insurance.coverage.reference 0..1 MS
* insurance.coverage.reference ^label = "Pharmacy Coverage Reference"
* insurance.coverage.reference ^short = "Pharmacy Coverage Reference"
* insurance.coverage.reference ^definition = "Reference to a Coverage resource containing identification of the patient's pharmacy coverage"
* item 1..1 MS
* item ^label = "Max 1 item per request"
* item ^short = "Max 1 item per request"
* item.sequence = 1 (exactly)
* item.sequence MS
* item.sequence ^comment = "A maximum of one product is submitted per request. Value is always '1'"
* item.careTeamSequence 1..1 MS
* item.careTeamSequence ^label = "Care Team Sequence ID Reference"
* item.careTeamSequence ^short = "Care Team Sequence ID Reference"
* item.careTeamSequence ^definition = "A reference to the Care Team composite in this resource that reflects the prescriber"
* item.careTeamSequence ^comment = "Populate with a reference to .careTeam.sequence.@id"
* item.productOrService MS
* item.productOrService from $rtpbc-prescribable-product-code-vs (extensible)
* item.productOrService ^label = "Prescribed Product"
* item.productOrService ^short = "Prescribed Product"
* item.productOrService ^definition = "A product identifier for the prescribed medication. Either an NDC11 or an RxNorm code for a prescribable product (representing drug name, strength and dose form)"
* item.productOrService ^comment = "The NDC11 is an 11-digit normalized format consisting of a 5-digit labeler segment, 4-digit product segment, and 2-digit package segment, with no dashes"
* item.productOrService ^binding.description = "RTPBC prescribable product codes (NDC11 and RxNorm)"
* item.productOrService.coding 1..* MS
* item.productOrService.coding.system 1.. MS
* item.productOrService.coding.code 1.. MS
* item.productOrService.coding.display 1.. MS
* item.productOrService.coding.display ^label = "Product Description"
* item.productOrService.coding.display ^short = "Product Description"
* item.productOrService.coding.display ^definition = "The full prescribable product name, including drug name, strength and dose form. The drug name equals the brand name if the branded product is desired"
* item.quantity 1.. MS
* item.quantity ^label = "Prescribed Quantity"
* item.quantity ^short = "Prescribed Quantity"
* item.quantity.value 1.. MS
* item.quantity.value ^label = "Quantity in Billing Units"
* item.quantity.value ^short = "Quantity in Billing Units"
* item.quantity.value ^definition = "The prescribed quantity in terms of the applicable billing unit of measure"
* item.quantity.unit 1.. MS
* item.quantity.unit from $rtpbc-billing-unit-vs (extensible)
* item.quantity.unit ^label = "Billing unit of measure"
* item.quantity.unit ^short = "Billing unit of measure"
* item.quantity.unit ^definition = "Pharmacy metric billing unit: GM (gram), ML (milliliter) or EA (each)"
* item.quantity.unit ^binding.description = "Billing quantity unit of measure"