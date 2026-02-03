<p></p>
This profile constrains the MedicationRequest resource to be used in an anonymous request to RTPBC endpoints that don't require personally-identifiable, protected healthcare information to provide their response. Examples include cash price sources or discount card companies.
<br><br>
Data population is based on the [RTPBC Medication Request](StructureDefinition-rtpbc-medicationrequest.html) but excludes elements that could contain information about the patient or related information that could potentially be used to re-identify the patient.
<br><br>
### Masked information
The following elements are unavailable in this profile:
* subject
* requester

In the case of `subject`, which is required by the MedicationRequest profile on which this definition is based, a Data Absent Reason extension is to be used with the code, "masked".

In the case of `requester`, which is optional in the base profile, the cardinality is set to 0..0.


<br>