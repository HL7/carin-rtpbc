Alias: $reject-code = http://terminology.hl7.org/CodeSystem/NCPDPRejectCode

ValueSet: RtbpcErrorCodeValueSet
Id: rtpbc-error-code
Title: "RTPBC Error Code Value Set"
Description: "This value set contains the error codes to be used by real-time pharmacy benefit check servers when encountering a data or business condition that prevents processing from completing. Values are defined in the NCPDP-maintained Reject Code (511-FB) code set."
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
* include codes from system $reject-code