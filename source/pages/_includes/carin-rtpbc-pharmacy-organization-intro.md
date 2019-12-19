This profile represents a pharmacy as used in the real-time pharmacy benefit check (RTPBC) process. 

<br>
The function of the Pharmacy resource in this exchange is to identify a pharmacy as either...
* the patient's preferred pharmacy, in the RTPBC request
* or an alternative pharmacy for which information is being returned in the RTPBC response

The set of conveyed pharmacy information consists of...
* identification of the pharmacy. The [NCPDP Provider ID](NamingSystem-carin-rtpbc-NamingSystem-ncpdp-provider-id.html) is the preferred identifier for this purpose because it specifies the individual pharmacy location. Alternatively, an organizational NPI may be used
* the pharmacy name
* the  phone number
* the pharmacy address
<br><br>

### Must Support elements in this profile 
**Client systems**<br>
* The pharmacy identifier and name MUST be populated with correct information in order for the processor to determine reliable cost and coverage information
* Pharmacy phone and address SHOULD be populated to assist in identifying a particular pharmacy location, especially when identifying the pharmacy using an NPI

**Responding systems**<br>
* MUST consider pharmacy type and location when determining pricing, coverage, and alternative pharmacy options
<br><br>
