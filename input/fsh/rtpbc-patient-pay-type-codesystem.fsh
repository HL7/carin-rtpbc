CodeSystem: RtpbcPatientPayTypeCodeSystem
Id: rtpbc-patient-pay-type
Title: "RTPBC Patient Pay Type Code System"
Description: "This code system defines components of a patient's responsibility for a prescription product's cost."
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
* ^caseSensitive = false
* ^content = #complete
* #deductible "Deductible" "Amount to be collected from a patient to be applied to a periodic deductible"
* #accumulated-deductible "Accumulated deductible" "Total deductible paid after amount associated with this request"
* #remaining-deductible "Remaining deductible" "Remaining deductible amount after payment associated with this request"
* #coinsurance "Per prescription coinsurance" "Amount to be collected from a patient to satisfy a per prescription coinsurance"
* #copay "Copay" "Amount to be collected from the patient to satisfy a per prescription copay"
* #tax "Tax" "Amount to be collected from the patient for sales tax"
* #cash-price "Full product cash price" "Full product cash price before discounts or coupons"
* #coupon-discount "Coupon discount amount" "Coupon discount reducing the amount to be collected from the patient"
* #member-discount "Member discount amount" "Member discount reducing the amount to be collected from the patient"
* #other-discount "Other discount amount" "Other discount reducing the amount to be collected from the patient"
* #other-cost "Other cost" "Other amount to be collected from the patient"
* #eligible "Eligible amount" "Amount that is considered for adjudication"
* #total "Total patient responsibility" "Amount equalling the total patient responsibility for a prescription product's cost"