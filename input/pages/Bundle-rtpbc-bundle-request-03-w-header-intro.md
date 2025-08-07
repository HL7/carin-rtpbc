<h3 id="example-rtpbc-request-scenario-using-fhir-messaging">Example RTPBC request scenario using FHIR messaging</h3>
<p>In this example:</p>
<ul>
<li>the client is a patient application</li>
<li>the server is the patient&#39;s insurer (specifically, the party that manages the patient&#39;s pharmacy benefit)</li>
<li>the request is submitted as a Bundle containing a Claim and supporting resources, as the single parameter to the processor&#39;s $process-message operation</li>
</ul>
<p>Content:</p>
<ul>
<li>the patient&#39;s name is Jane Doe, date of birth is 1975-12-05, and address is 100 Oak Court, Madison, WI 53510</li>
<li>the requested medication is Prozac 10mg capsule, 60 capsules, for a 30 day supply (reflected in the Claim and MedicationRequest resources)</li>
<li>the prescriber&#39;s identifying information is captured in the Practitioner resource</li>
<li>the requested pharmacy is Hometown Drug (reflected in the Organization resource)</li>
<li>the patient&#39;s coverage identifiers (BIN/PCN, member ID) are conveyed in a Coverage resource</li>
</ul>
<br/>
<p>The supporting data (patient, coverage, prescription, etc.) consists of identifying information that the processor will use to locate the patient&#39;s insurance record and coverage rules applying to the medication, pharmacy and prescriber.</p>
<p><br/></p>
<!-- 
<div><img src="rtpbc-bundle-request-03.png" alt="bundle"></div>
-->
<br/>

<br/>