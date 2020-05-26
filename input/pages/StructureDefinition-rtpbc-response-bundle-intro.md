<br>The response Bundle profile identifies the resources to be submitted in an RTPBC request. The following are used in all circumstances and have a minimum cardinality of 1:

* MessageHeader
* ClaimResponse
* Patient
* In addition, the Organization resource is necessary when returning information based on an alternative pharmacy. It's minimum cardinality is 0.
<br><br>

### Must Support elements in this profile 
**Responding systems**
* All the above Bundle resource entries are designated Must Support. The required elements MUST be populated with correct and complete information.
* When returning information based on an alternative pharmacy, the Organization (pharmacy) resource MUST also be populated.

**Client systems** MUST be able to interpret and convey to users information from all Must Support resources.
<br><br>
