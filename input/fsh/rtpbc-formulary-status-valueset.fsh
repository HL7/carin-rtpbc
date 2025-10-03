ValueSet: RtbpcFormularyStatusValueSet
Id: rtpbc-formulary-status
Title: "RTPBC Formulary Status Value Set"
Description: "This value set contains formulary statuses that may apply to a prescription product evaluated in the Real-time Pharmacy Benefit Check (RTPBC) process."
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
* include codes from system $rtpbc-formulary-status-cs