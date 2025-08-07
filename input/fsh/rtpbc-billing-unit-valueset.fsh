ValueSet: RtbpcBillingUnitValueSet
Id: rtpbc-billing-unit
Title: "RTPBC Billing Unit Value Set"
Description: "This value set contains the quantity unit of measure to be used when requesting predetermination of benefits for prescription-related products"
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
* UCUM#{Each} "Each"
* UCUM#g "gram"
* UCUM#mL "milliliter"