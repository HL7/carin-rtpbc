This profile constrains the Practitioner resource to convey identifying prescriber information required in the consumer real-time pharmacy benefit check (RTPBC) process.
<br>
The function of the Practitioner resource in this exchange is to simply identify the prescriber of the medication for which pricing and coverage is desired. This limited set of information consists of...
* the prescriber's family name
* the prescriber's NPI
<br><br>

### Must Support elements in this profile 
**Client systems**<br>
Both of the elements above MUST be populated with correct information in order for the processor to deterime reliable cost and coverage information.

**Responding systems**<br>
* MUST make use of prescriber information if it impacts pricing or coverage
<br><br>
