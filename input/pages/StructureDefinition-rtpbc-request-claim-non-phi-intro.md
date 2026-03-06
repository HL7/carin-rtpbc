<p></p>
This profile constrains the Claim resource to serve as an anonymous request to RTPBC endpoints that don't require personally-identifiable, protected healthcare information to provide their response. Examples include cash price sources or discount card companies.

Data population is based on the [RTPBC Request Using Claim](StructureDefinition-rtpbc-request-claim.html) but excludes elements that could contain information about the patient or related information that could potentially be used to re-identify the patient (such as the patient's care provider or insurance identifiers).

<p></p>

### Masked information
The following elements are unavailable in this profile:
* patient
* careTeam
* insurer
* insurance.coverage

In cases where the element to be masked is required by the base Claim resource, the Data Absent Reason extension is to be used with the code, "masked".

In cases where the element to be masked is optional in the base Claim resource, this profile sets the cardinality to 0..0.

### Preferred pharmacy - specific or geographic area
This profile enables the patient to state their pharmacy preference by either specifying a particular pharmacy or describing a geographic area in terms of one or more postal codes.
- Specific pharmacy: Reference a pharmacy (Organization resource) in Claim.provider
- Geographic area: Use the preferredPharmacyPostalCode extension in Claim.provider. This may be repeated to specify multiple postal codes.

### Support for an anonymous patient identifier
The patient.identifier element in this profile is available to be populated but SHALL contain only non-personally-identifiable codes, such as an account or user ID assigned during an anonymous interaction with the server. 

<p></p>
<p></p>
