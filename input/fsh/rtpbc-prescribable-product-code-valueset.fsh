ValueSet: RTPBCPrescribableProductCodeValueSet
Id: rtpbc-prescribable-product-code
Title: "RTPBC Prescribable Product Code Value Set"
Description: "This value set includes codes used to specify prescribed medications in the US: RxNorm codes that specify drug name, strength and dose form (SBD, SCD, BPCK and GPCK term types) and NDC-11 codes (which represent specific packaged products)."
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
* include codes from system Ndc
* include codes from system RxNorm where TTY in "SCD,SBD,GPCK,BPCK"