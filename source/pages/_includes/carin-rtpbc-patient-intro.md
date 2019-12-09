This profile constrains the Patient resource for carrying the limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process. In RTPBC, the sole purpose of patient information is to enable the responding payer/PBM to locate the patient's insurance information. From there, pricing and coverage information is determined based on the patient's member and coverage information maintained by the payer. 
<br>
The function of the Patient resource in this exchange is limited to conveying identifying information needed for the responder to locate its own records related to the patient. This limited set of information consists of the patient's...
* given and family name
* gender
* date of birth
* address
<br><br>

### Must Support elements in this profile 
**Client and Responding systems**<br>
All of the elements identified above are marked Must Support though not all will be required in a given implementation (the address composite itself and each element within have a minimum cardinality of 0, to support differing patient lookup approaches).
The appropriate cardinality for address elements is to be determined by implementers.

<br>
