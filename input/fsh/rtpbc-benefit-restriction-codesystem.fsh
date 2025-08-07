CodeSystem: RtpbcBenefitRestrictionCodeSystem
Id: rtpbc-benefit-restriction
Title: "RTPBC Benefit Restriction Code System"
Description: "This code system defines a set of benefit restrictions that may apply to a prescription product and pharmacy combination evaluated in the Real-time Pharmacy Benefit Check (RTPBC) process."
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
* ^caseSensitive = false
* ^content = #complete
* #covered "Covered" "Covered"
* #prior-auth "Prior authorization required" "Covered with restriction: Prior authorization required"
* #step-therapy "Step therapy applies" "Covered with restriction: Step therapy applies"
* #quantity-limit "Quantity limit applies" "Covered with restriction: Quantity limit applies"
* #pharmacy-restriction "Pharmacy restriction applies" "Covered with restriction: Pharmacy restriction applies"
* #other-restriction "Other restriction applies" "Covered with restriction: Other restriction applies"
* #not-covered "Not covered" "Not covered"