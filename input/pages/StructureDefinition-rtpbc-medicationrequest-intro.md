The function of the MedicationRequest resource in this exchange is to convey information from the patient's prescription that has a bearing on pricing and coverage. This limited set of information consists of...

* the medication name and identifier
* prescribed quantity and unit of measure
* identification of the prescriber
* identification of the pharmacy
* whether product substitutions are allowed
* optionally, the days supply represented by the quantity

<p></p>

### Must Support elements in this profile 
**Client systems** <br>
All of the elements identified above are marked Must Support... 
* §MS-MR-1:All MedicationRequest elements with a minimum cardinality of 1 **SHALL** be populated in order to enable reliable results from the processor.§ 
* substitutions.allowed is expected to be populated as *false*, indicating that the processor must provide pricing and coverage for the specific requested medication. (The processor may additionally return information about alternative medications)
* §MS-MR-2:MedicationRequest.dosageInstruction **SHOULD** be used when determining days supply.§

**Client and Responding systems**

* §MS-MR-3:Days supply (MedicationRequest.expectedSupplyDuration) can impact cost and coverage for a medication; however, patients may not be able to reliably provide it. Implementing partners **MAY** determine how or whether the element is to be used.§

**Responding systems**
* §MS-MR-4:RTPBC Responders **SHALL** make use of all pertinent required MedicationRequest elements when determining pricing and coverage.§
* §MS-MR-5:RTPBC Responders **MAY** use MedicationRequest.dosageInstruction when determining pricing and coverage.§

<p></p>
<p></p>