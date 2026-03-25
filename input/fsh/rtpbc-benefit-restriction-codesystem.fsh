CodeSystem: RtpbcBenefitRestrictionCodeSystem
Id: rtpbc-benefit-restriction-temporary
Title: "RTPBC Benefit Restriction Code System (Temporary)"
Description: "This code system defines a set of benefit restrictions that may apply to a prescription product and pharmacy combination evaluated in the Real-time Pharmacy Benefit Check (RTPBC) process. (A THO URL has been requested for this code system)"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 2
* ^version = "1.1.0"
* ^status = #active
* ^experimental = false
* ^date = "2026-03-01T00:00:00-05:00"
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
* #additional-fills-not-covered "Additional fills not covered" "Additional fills are not covered"
* #fill-too-soon "Fill too soon" "Fill too soon"
* #days-supply-limitation "Days supply limitation for product/service" "Days supply limitation for the product/service"
* #route-not-covered "Route of administration not covered" "Route of administration is not covered"