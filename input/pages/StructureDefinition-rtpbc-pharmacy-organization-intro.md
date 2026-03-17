The function of the Pharmacy resource in this exchange is to identify a pharmacy as either...
* the patient's preferred pharmacy, in the RTPBC request
* or an alternative pharmacy for which information is being returned in the RTPBC response

The set of conveyed pharmacy information consists of...
* identification of the pharmacy. The [NCPDP Provider Identification Number](https://terminology.hl7.org/CodeSystem-NCPDPProviderIdentificationNumber.html) is the preferred identifier for this purpose because it specifies the individual pharmacy location. Alternatively, an organizational NPI may be used
* the pharmacy name
* the  phone number
* the pharmacy address

<p></p>

### Must Support elements in this profile 
**Client systems**

* §MS-PH-1:The pharmacy Organization.identifier and Organization.name **SHALL** be populated with correct information in order for the processor to determine reliable cost and coverage information.§
* §MS-PH-2:Pharmacy phone (Organization.telecom.work) and address **SHOULD** be populated to assist in identifying a particular pharmacy location, especially when identifying the pharmacy using an NPI.§

**Responding systems**<br>
* §MS-PH-3:RTPBC Responders **SHALL** consider pharmacy type and location when determining pricing, coverage, and alternative pharmacy options§

<p></p>
<p></p>
