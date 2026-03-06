<h3>Example non-PHI RTPBC request</h3>
<p>No personally-identifiable information is contained in this example. This profile is used when requesting information from RTPBC responders that do not require patient information to return the desired information--such as cash price data sources. 

Note the following data population:</p>
<ul>
<li>the bundle does not contain Patient, MedicationRequest, Practitioner or Coverage resources</li>
<li>medication details are specified in the Claim resource</li>
<li>a preferred pharmacy ZIP code is given (in an extension within the Claim.provider element) rather than a specific pharmacy</li>
<li>the Claim contains a 'masked' Data Absent Reason for the patient element and insurance.coverage element, and careTeam is not populated</li>
</ul>

<p></p>

<h3>Example data content</h3>
<p>to be added...</p>
<p></p>