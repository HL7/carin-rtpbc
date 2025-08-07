ValueSet: RtpbcCountryCodeValueSet
Id: rtpbc-country-code
Title: "RTPBC Country Code Value Set"
Description: "This value set contains a subset of two-letter ISO 3166-1-2 country codes for the countries in which this profile is intended to be used (US and CA)."
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
* ISO3166Part1#US "United States of America"
* ISO3166Part1#CA "Canada"