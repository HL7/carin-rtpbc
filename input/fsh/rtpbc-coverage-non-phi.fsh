Profile: RtpbcCoverageNonPHI
Parent: $us-core-coverage
Id: rtpbc-coverage-non-phi
Title: "RTPBC Coverage - Non-PHI"
Description: "Coverage resource in which no personally-identifiable information is included. Used for representing non-patient-specific payment sources such as medication discount cards."
* ^meta.lastUpdated = "2026-03-03T00:00:00-05:00"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-03-03T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
//* subscriberId ^label = "Health Plan Cardholder ID"
//* subscriberId ^short = "Health Plan Cardholder ID"
//* subscriberId ^comment = "Either *PBM Member ID* (.class.type = 'rxid') or *Subscriber ID* must be populated"
* subscriberId ^label = "Subscriber ID (masked)"
* subscriberId ^short = "Subscriber ID (masked)"
* subscriberId ^definition = "No personally-identifiable information is included in this profile. Instead, the patient element is populated with a Data Absent Reason = 'masked'"
* subscriberId.extension 1..* MS
* subscriberId.extension contains
    $data-absent-reason named data-masked 1..1 MS
* subscriberId.extension[data-masked].valueCode = #masked (exactly)
* beneficiary ^label = "Patient information (masked)"
* beneficiary ^short = "Patient information (masked)"
* beneficiary ^definition = "No personally-identifiable information is included in this profile. Instead, the patient element is populated with a Data Absent Reason = 'masked'"
* beneficiary.extension 1..* MS
* beneficiary.extension contains
    $data-absent-reason named data-masked 1..1 MS
* beneficiary.extension[data-masked].valueCode = #masked (exactly)
* beneficiary.reference 0..0
* beneficiary.type 0..0
* beneficiary.identifier 0..1
* beneficiary.identifier ^label = "Unique, non-personally identifiable code"
* beneficiary.identifier ^short = "Unique, non-personally identifiable code"
* beneficiary.identifier ^definition = "A unique, non-personally identifiable code such as an anonymous account identifier"
* beneficiary.identifier ^comment = "The beneficiary.identifier element in this profile is limited to only non-personally-identifiable codes, such as an account or user ID assigned during an anonymous interaction with the server."
* beneficiary.display 0..0
* relationship ^comment = "In this non-PHI Coverage profile, always 'self'"
* relationship.coding.system = $subscriber-relationship (exactly)
* relationship.coding.code = #self (exactly)
* payor.identifier MS
* payor.identifier ^label = "Payer ID"
* payor.identifier ^short = "Payer ID"
* payor.identifier ^definition = "Payer ID as defined in the participants' environment. E.g., an identifier defined in an eligibility service to represent the payer."
* payor.identifier.value 1.. MS
* payor.identifier.value ^label = "Payer ID Value"
* payor.identifier.value ^short = "Payer ID Value"
* class ^label = "Pharmacy coverage identifiers"
* class ^slicing.discriminator.type = #value
* class ^slicing.discriminator.path = "type"
* class ^slicing.description = "Identifiers used by the payer/PBM to located the patient's coverage. IIN (BIN) number, Processor Control Number (PCN), pharmacy benefit Group ID and patient's PBM Member ID."
* class ^slicing.ordered = false
* class ^slicing.rules = #open
* class ^short = "Pharmacy coverage identifiers"
* class ^definition = "Identifiers used by the payer/PBM to located the patient's coverage. IIN (BIN) number, Processor Control Number (PCN), pharmacy benefit Group ID and patient's PBM Member ID."
* class ^comment = "Populate with identifiers retrieved from an eligibility service or other source agreed between trading partners"
* class.type from CoverageClassCodes (extensible)
* class.type ^binding.description = "Coverage Class Codes"
* class contains
    bin 0..1 MS and
    pcn 0..1 MS and
    rxgroup-id 0..1 MS and
    member-id 0..1 MS
* class[bin] ^label = "IIN (BIN) number"
* class[bin] ^short = "IIN (BIN) number"
* class[bin].type 1..1
* class[bin].type = $coverage-class#rxbin
* class[pcn] ^label = "Processor Control Number (PCN)"
* class[pcn] ^short = "Processor Control Number (PCN)"
* class[pcn].type 1..1
* class[pcn].type = $coverage-class#rxpcn
* class[rxgroup-id] ^label = "Pharmacy Benefit Group ID"
* class[rxgroup-id] ^short = "Pharmacy Benefit Group ID"
* class[rxgroup-id].type 1..1
* class[rxgroup-id].type = $coverage-class#rxgroup
* class[member-id] ^label = "PBM Member ID"
* class[member-id] ^short = "PBM Member ID"
* class[member-id].type 1..1
* class[member-id].type = $coverage-class#rxid


//---------------------------

Instance: rtpbc-coverage-non-phi-01
InstanceOf: rtpbc-coverage-non-phi
Usage: #example
Description: "An example Non-PHI RTPBC Coverage, as used to represent a medication discount card"
* meta.profile = $rtpbc-coverage-non-phi
* status = #active
* subscriberId.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* subscriberId.extension[data-masked].valueCode = #masked
* beneficiary.extension[data-masked].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* beneficiary.extension[data-masked].valueCode = #masked
* relationship = $subscriber-relationship#self
* payor.identifier.value = "Med Discounts"
* class[0].type = $coverage-class#rxbin
* class[=].value = "BIN001"
* class[+].type = $coverage-class#rxpcn
* class[=].value = "PCN002"
* class[+].type = $coverage-class#rxgroup
* class[=].value = "GROUP0001"
* class[+].type = $coverage-class#rxid
* class[=].value = "MEMBER000001"

