<h3 id="example-rtpbc-request-scenario-using-fhir-messaging">Example RTPBC request bundle submitted to a pricing source</h3>
<p>In this example:</p>
<ul>
<li>the client is a patient application</li>
<li>the server is a medication pricing source vendor</li>
<li>the request is submitted as a Bundle containing a Claim and supporting resources, as the single parameter to the processor&#39;s $process-message operation</li>
</ul>
<p>Content:</p>
<ul>
<li>the patient&#39;s name is Jane Doe, date of birth is 1975-12-05, and address is 100 Oak Court, Madison, WI 53510</li>
<li>the requested medication is Prozac 10mg capsule, 60 capsules, for a 30 day supply (reflected in the Claim and MedicationRequest resources)</li>
<li>the prescriber&#39;s identifying information is captured in the Practitioner resource</li>
<li>the requested pharmacy is Hometown Drug (reflected in the Organization resource)</li>
<li>a Coverage resource is not sent in the bundle, as it is not needed by the pricing source</li>
</ul>

<br/>
<div><img src="rtpbc-bundle-request-03-price-source.png" alt="bundle"></div>

<br/>

<br/>