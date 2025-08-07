Profile: RtpbcPharmacy
Parent: $us-core-organization
Id: rtpbc-pharmacy-organization
Title: "RTPBC Pharmacy Organization"
Description: "This profile builds on the US Core Organization to represent a pharmacy as used in the real-time pharmacy benefit check (RTPBC) process."
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
* identifier 1.. MS
* identifier ^label = "Pharmacy Identifier"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^short = "Pharmacy Identifier"
* identifier ^definition = "The pharmacy's identifier (organizational NPI or NCPDP ID)"
* identifier ^comment = "Either an NPI or NCPDP ID must be present"
* identifier.system 1.. MS
* identifier.value 1.. MS
* identifier contains
//    NPI 0..1 MS
//    CLIA 0..0
    NcpdpProviderId 0..1 MS
* identifier[NPI] ^label = "National Provider Identifier (NPI)"
* identifier[NPI] ^definition = "The pharmacy's organizational NPI"
* identifier[NPI] ^requirements = "Populate with the organizational NPI that most specifically represents the intended pharmacy location"
* identifier[NPI] ^patternIdentifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NcpdpProviderId] ^label = "NCPDP Provider ID"
* identifier[NcpdpProviderId] ^short = "NCPDP Provider ID"
* identifier[NcpdpProviderId] ^definition = "The pharmacy's NCPDP Provider ID"
* identifier[NcpdpProviderId] ^patternIdentifier.system = $ncpdp-id
* type 1..1 MS
* type from $rtpbc-pharmacy-type-vs (extensible)
* type ^label = "Pharmacy Type"
* type ^short = "Pharmacy Type"
* type ^definition = "Pharmacy type: R (Retail), M (Mail order), S (Specialty), L (Long-term care), A (Pharmacy without restriction)"
* type ^binding.description = "RTPBC Pharmacy Type Value Set"
* name MS
* name ^label = "Pharmacy Name"
* name ^short = "Pharmacy Name"
* telecom MS
* telecom ^label = "Pharmacy Telephone"
* telecom ^short = "Pharmacy Telephone"
* telecom ^definition = "Pharmacy telephone number for patients, customers"
* telecom ^comment = "Must Support when the pharmacy is included in the RTPBC response (ClaimResponse). \"Must support\" means that (a) the responding payer/PBM can provide a patient-appropriate telephone number for covered pharmacies and (b) the patient application can make the phone number available to the user as it deems appropriate"
* telecom.system 1.. MS
* telecom.system = #phone (exactly)
* telecom.value 1.. MS
* address MS
* address ^label = "Pharmacy Address"
* address ^short = "Pharmacy Address"
* address ^definition = "The pharmacy store address"
* address ^comment = "Must Support when the pharmacy is included in the RTPBC response (ClaimResponse). \"Must support\" means that (a) the responding payer/PBM can provide pharmacy address information for covered pharmacies that the patient may have a need to contact or visit (e.g., a retail pharmacy location) and (b) the patient application can make the address available to the user as it deems appropriate"
* address.state MS
* address.state from $rtpbc-state-and-province-code-vs (extensible)
* address.state ^binding.description = "RTPBC Two Letter State and Province Codes"
* address.postalCode MS
* address.postalCode ^label = "Postal code"
* address.postalCode ^short = "Postal code"
* address.country MS
* address.country from $rtpbc-country-code-vs (required)
* address.country ^comment = "Populate when not a US address"
* address.country ^binding.description = "ISO 3166 2-character country codes"

//---------------------------

/*
Instance: rtpbc-organization-03m
InstanceOf: rtpbc-pharmacy-organization
Usage: #example
Description: "An example RTPBC pharmacy (FHIR Organization) representing a mail order pharmacy"
* meta.profile = $rtpbc-pharmacy-organization
* identifier.system = $ncpdp-id
* identifier.value = "0999029"
* active = true
* type = $pharmacy-type-cs#M "Mail Order"
* name = "My Mail Service Pharmacy"
* telecom.system = #phone
* telecom.value = "5551234567"
* address.line = "10001 Oakland Road"
* address.city = "Milwaukee"
* address.state = "WI"
* address.postalCode = "54444"
* address.country = "US"
*/