This profile constrains the Practitioner resource to convey identifying prescriber information required in the consumer real-time pharmacy benefit check (RTPBC) process.

<p></p>

The function of the Practitioner resource in this exchange is to simply identify the prescriber of the medication for which pricing and coverage is desired. This limited set of information consists of...
* the prescriber's family name
* the prescriber's NPI

<p></p>

### Must Support elements in this profile 
**Client systems** 

§MS-PR-1: Client systems SHALL populate both the prescriber's family name and NPI with correct information in order for the processor to reliably determine cost and coverage information.§

**Responding systems**<br>
§MS-PR-2: Responding systems SHALL make use of prescriber information if it impacts pricing or coverage.§

<p></p>
<p></p>