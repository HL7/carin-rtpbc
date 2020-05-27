<h3 id="example-rtpbc-response-scenario-using-fhir-messaging">RTPBC response bundle returned by a pricing source</h3>
<p>In this example:</p>
<ul>
<li>the client is a patient application</li>
<li>the server is a medication pricing source vendor</li>
<li>the response is returned as a Bundle containing a ClaimResponse and supporting resources, in response to a $process-message operation</li>
</ul>
<p>Content:</p>
<ul>
<li>the requested medication is Prozac 10mg capsule, 60 capsules, and the requested pharmacy is Hometown Drug. Adjudication returned in the ClaimResponse.item composite</li>
<li>the .item contains patient costs for the requested drug and pharmacy combination</li>
<li>the .addItem composite holds an alternative fulfillment (the requested drug at a different pharmacy). Adjudication is returned in the ClaimResponse.addItem composite</li>
<li>a pharmacy Organization resource describes the alternative pharmacy option identified by the processor</li>
</ul>
<div><img src="rtpbc-bundle-response-03-price-source.png" alt="bundle"></div>

<br/>