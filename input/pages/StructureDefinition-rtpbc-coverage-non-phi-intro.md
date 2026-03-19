<p></p>
This profile constrains the Coverage resource to contain non-patient-specific coverage information related to an RTPBC response entry conveyed in a Claim.item or Claim.addItem element.

Data population is based on the [RTPBC Coverage](StructureDefinition-rtpbc-coverage.html) but excludes content that could contain information about the patient.

<p></p>

### Masked information
The following element is unavailable in this profile:
* beneficiary

§PHI-COV-1:To conform with the Non-PHI Coverage profile, the Data Absent Reason extension **SHALL** be used in the Coverage.beneficiary element, populated with the code, "masked".§

<p></p>
<p></p>
