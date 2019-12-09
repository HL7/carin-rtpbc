This profile constrains the MedicationRequest resource to convey a subset of prescription information required in the consumer real-time pharmacy benefit check (RTPBC) process. The content specifies the prescribed product and quantity, and references the prescribing practitioner and the patients' preferred pharmacy.
<br><br>
The function of the MedicationRequest resource in this exchange is to convey information from the patient's prescription that has a bearing on pricing and coverage. This limited set of information consists of...
* the medication name and identifier
* prescribed quantity and unit of measure
* identification of the prescriber
* identification of the pharmacy
* whether product substitutions are allowed
* optionally, the days supply represented by the quantity
<br><br>

### Must Support elements in this profile 
**Client systems** <br>
All of the elements identified above are marked Must Support... 
* all of these except for days supply (.expectedSupplyDuration) have a minimum cardinality of 1 and MUST be populated in order to enable reliable results from the processor 
* substitutions.allowed is expected to be populated as *false*, indicating that the processor must provide pricing and coverage for the specific requested medication. (The processor may additionally return information about alternative medications)

**Client and Responding systems** <br>
* days supply (.expectedSupplyDuration) can impact cost and coverage for a medication; however, patient's may not be able to reliably provide it. Implementing partners MUST determine how or whether the element is to be used.
**Responding systems**
* MUST make use of all pertinent MedicationRequest information when determining pricing and coverage

<br>
