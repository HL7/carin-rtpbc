Alias: $pharmacy-type-cs = http://terminology.hl7.org/CodeSystem/NCPDPPharmacyType

ValueSet: RtpbcPharmacyTypeValueSet
Id: rtpbc-pharmacy-type
Title: "RTPBC Pharmacy Type Value Set"
Description: "This value set contains pharmacy type categories defined in the NCPDP Pharmacy Type (955-HR) code system."
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
* include codes from system $pharmacy-type-cs