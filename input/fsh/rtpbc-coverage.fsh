Alias: $coverage-class = http://terminology.hl7.org/CodeSystem/coverage-class

Profile: RtpbcCoverage
Parent: Coverage
Id: rtpbc-coverage
Title: "RTPBC Coverage"
Description: "This profile constrains the Coverage resource for carrying the pharmacy benefit information required in the consumer real-time pharmacy benefit check process"
* ^meta.lastUpdated = "2019-12-08T00:00:00-05:00"
* ^version = "1.0.0"
* ^status = #active
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
* subscriberId MS
* subscriberId ^label = "Health Plan Cardholder ID"
* subscriberId ^short = "Health Plan Cardholder ID"
* subscriberId ^comment = "Either *PBM Member ID* (.class.type = 'rxid') or *Subscriber ID* must be populated"
* beneficiary MS
* payor ..1 MS
* payor ^label = "Payer ID"
* payor ^short = "Payer ID"
* payor.identifier MS
* payor.identifier ^label = "Payer ID"
* payor.identifier ^short = "Payer ID"
* payor.identifier ^definition = "Payer ID as defined in the participants' environment. E.g., an identifier defined in an eligibility service to represent the payer."
* payor.identifier.value 1.. MS
* payor.identifier.value ^label = "Payer ID Value"
* payor.identifier.value ^short = "Payer ID Value"
* class ..* MS
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
    pbm-member-id 0..1 MS
* class[bin] ^label = "IIN (BIN) number"
* class[bin] ^short = "IIN (BIN) number"
* class[bin] ^comment = "Populate as agreed between trading partners"
* class[bin].type 1..1
* class[bin].type = $coverage-class#rxbin
* class[pcn] ^label = "Processor Control Number (PCN)"
* class[pcn] ^short = "Processor Control Number (PCN)"
* class[pcn] ^comment = "Populate as agreed between trading partners"
* class[pcn].type 1..1
* class[pcn].type = $coverage-class#rxpcn
* class[rxgroup-id] ^label = "Pharmacy Benefit Group ID"
* class[rxgroup-id] ^short = "Pharmacy Benefit Group ID"
* class[rxgroup-id] ^definition = "The patient's Group ID associated with their pharmacy benefit"
* class[rxgroup-id] ^comment = "Populate as agreed between trading partners"
* class[rxgroup-id].type 1..1
* class[rxgroup-id].type = $coverage-class#rxgroup
* class[pbm-member-id] ^label = "PBM Member ID"
* class[pbm-member-id] ^short = "PBM Member ID"
* class[pbm-member-id] ^definition = "The patient's pharmacy benefit member ID (which may differ from their overall health insurance ID)"
* class[pbm-member-id] ^comment = "Populate as agreed between trading partners"
* class[pbm-member-id].type 1..1
* class[pbm-member-id].type = $coverage-class#rxid

//---------------------------

Instance: rtpbc-coverage-01
InstanceOf: rtpbc-coverage
Usage: #example
Description: "An example RTPBC Coverage"
* meta.profile = $rtpbc-coverage
* status = #active
* beneficiary = Reference(rtpbc-patient-03)
* payor.identifier.value = "Pharmacy Plans US"
* class[0].type = $coverage-class#rxbin
* class[=].value = "BIN001"
* class[+].type = $coverage-class#rxpcn
* class[=].value = "PCN002"
* class[+].type = $coverage-class#rxgroup
* class[=].value = "GROUP0001"
* class[+].type = $coverage-class#rxid
* class[=].value = "MEMBER000001"
