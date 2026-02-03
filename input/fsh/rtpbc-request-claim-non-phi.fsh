Profile: RtpbcRequestClaimNonPHI
Parent: Claim
Id: rtpbc-request-claim-non-phi
Title: "RTPBC Request Using Claim - Non-PHI"
Description: "This profile provides minimal, non-persoanlly-identifiable content for submission in an RTPBC request to data sources that can provide benefit or price information without receiving patient details."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-12-12T00:00:00-05:00"
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
* patient.extension 1..* MS
* patient.extension contains
    $data-absent-reason named data-masked 1..1 MS
* patient.extension[data-masked].valueCode = #masked (exactly)
* patient ^label = "Patient information (masked)"
* patient ^short = "Patient information (masked)"
* patient ^definition = "No personally-identifiable information is included in this profile. Instead, the patient element is populated with a Data Absent Reason = 'masked'"
* patient.reference 0..0
* patient.type 0..0
* patient.identifier 0..1
* patient.identifier ^label = "Unique, non-personally identifiable code"
* patient.identifier ^short = "Unique, non-personally identifiable code"
* patient.identifier ^definition = "A unique, non-personally identifiable code such as an anonymous account identifier"
* patient.identifier ^comment = "The patient.identifier element in this profile is limited to only non-personally-identifiable codes, such as an account or user ID assigned during an anonymous interaction with the server."
* patient.display 0..0
* created MS
* created ^label = "Created DateTime"
* created ^short = "Created DateTime"
* created ^definition = "The date and time on which this RTBPC request was created"
* insurer 0..0
* insurer ^label = "Insurer (masked)"
* insurer ^short = "Insurer (masked)"
* insurer ^definition = "No personally-identifiable information is included in this profile. Insurance information is not included because it could potentially be used to re-identify patients"
* provider only Reference($rtpbc-pharmacy-organization)
* provider MS
* provider ^label = "Preferred Pharmacy"
* provider ^short = "Preferred Pharmacy"
* provider ^definition = "The patient's preferred pharmacy to be considered during creation of the response"
* provider.reference 0..1 MS
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
* prescription only Reference($rtpbc-medicationrequest-non-phi)
* prescription ^label = "Prescription Reference"
* prescription ^short = "Prescription Reference"
* prescription ^definition = "Reference to the pertinent prescription information in a MedicationRequest resource."
* prescription.reference 1.. MS
* careTeam 0..0
* careTeam ^label = "Care team information (masked)"
* careTeam ^short = "Care team information (masked)"
* careTeam ^definition = "No personally-identifiable information is included in this profile. Care team information is not included because it can be used to re-identify patients in some circumstances"
* insurance 1..1
* insurance ^label = "Patient insurance information (masked)"
* insurance ^short = "Patient insurance information (masked)"
* insurance ^comment = "Only one set of coverage is submitted in the request. Value is always '1'"
* insurance.sequence = 1 (exactly)
* insurance.focal = false (exactly)
* insurance.focal ^comment = "No insurance coverage information is contained in this profile because it can contain identifiers that can be used to re-identify patients"
* insurance.coverage.extension 1..* MS
* insurance.coverage.extension contains
    $data-absent-reason named data-masked 1..1 MS
* insurance.coverage.extension[data-masked].valueCode = #masked (exactly)
* insurance.coverage ^label = "Insurance Coverage Masked"
* insurance.coverage ^short = "Insurance Coverage Masked"
* insurance.coverage ^definition = "No personally-identifiable information is included in this profile. Insurance information is not included because it can contain identifiers that can be used to re-identify patients. Instead, the insurance element is populated with a Data Absent Reason = 'masked'"
* insurance.coverage.reference 0..0
* insurance.coverage.type 0..0
* insurance.coverage.identifier 0..0
* insurance.coverage.display 0..0
* item 1..1 MS
* item ^label = "Max 1 item per request"
* item ^short = "Max 1 item per request"
* item.sequence = 1 (exactly)
* item.sequence MS
* item.sequence ^comment = "A maximum of one product is submitted per request. Value is always '1'"
* item.careTeamSequence 0..0
* item.careTeamSequence ^comment = "No personally-identifiable information is included in this profile. Care team information is not included because it can be used to re-identify patients in some circumstances"
* item.productOrService MS
* item.productOrService from $rtpbc-prescribable-product-code-vs (extensible)
* item.productOrService ^label = "Prescribed Product"
* item.productOrService ^short = "Prescribed Product"
* item.productOrService ^definition = "A product identifier for the prescribed medication. Either an NDC11 or an RxNorm code for a prescribable product (representing drug name, strength and dose form)"
* item.productOrService ^comment = "The NDC11 is an 11-digit normalized format consisting of a 5-digit labeler segment, 4-digit product segment, and 2-digit package segment, with no dashes"
* item.productOrService ^binding.description = "RTPBC prescribable product codes (NDC11 and RxNorm)"
* item.productOrService.coding 0..* MS
* item.productOrService.coding.system 0.. MS
* item.productOrService.coding.code 0.. MS
* item.productOrService.coding.display 0.. MS
* item.productOrService.coding.display ^label = "Product Description"
* item.productOrService.coding.display ^short = "Product Description"
* item.productOrService.coding.display ^definition = "The full prescribable product name, including drug name, strength and dose form. The drug name equals the brand name if the branded product is desired"
* item.productOrService.text 0.. MS
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