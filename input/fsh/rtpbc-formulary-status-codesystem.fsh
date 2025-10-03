CodeSystem: RtpbcFormularyStatusCodeSystem
Id: rtpbc-formulary-status
Title: "RTPBC Benefit Restriction Code System"
Description: "This code system defines formulary statuses that may apply to a prescription product evaluated in the Real-time Pharmacy Benefit Check (RTPBC) process."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-03T00:00:00-05:00"
* ^publisher = "'HL7 International / Pharmacy"
* ^contact[0].name = "'HL7 International / Pharmacy"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* ^contact[+].name = "Frank McKinney"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "fm@frankmckinney.com"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = false
* ^content = #complete
* #B "Brand Preferred" "Indicates the payer prefers the brand over the generic"
* #C "Carve-Out" "This medication is processed by a third party, not the payer providing the formulary"
* #N "Non-Formulary" "Response code indicating that the prescribed drug is not included in the plan formulary"
* #O "On Formulary" "The medication submitted is included in the list of payable products in that patient's plan formulary but that there may be a more preferred product in the therapeutic category"
* #P "On Formulary/Preferred" "The medication is the preferred payable products in that patient's plan formulary"
* #U "Unknown" "Unknown"
* #X "Non-Reimbursable without authorization" "This medication is not covered although an exception or appeal process may exist"
* #Y "Non-Reimbursable" "The medication will never be reimbursable by the payer with no appeal process"
* #Z "Zero Dollar Copay" "This medication does not have a copay. The cost is $0 to the patient"
