<h3 id="example-rtpbc-claimresponse-the-rtpbc-response-">Example RTPBC ClaimResponse (the &quot;RTPBC response&quot;)</h3>
<p>In this example:</p>
<ul>
<li>the requested medication is Prozac 10mg capsule, 60 capsules, and the requested pharmacy is Hometown Drug. Adjudication is returned in the ClaimResponse.item composite</li>
<li>the .item contains patient costs for the requested drug and pharmacy combination</li>
<li>the .addItem composite holds an alternative fulfillment (the requested drug at a different pharmacy). Adjudication is returned in the ClaimResponse.addItem composite</li>
<li>a referenced pharmacy Organization resource describes the alternative pharmacy option identified by the processor</li>
<li>benefit restriction information (e.g., Covered, Covered but requiring PA) is returned in the .benefitRestriction extensions in the .item and .addItem composites</li>
</ul>
<div><img src="rtpbc-claim-response-03.png" alt="claimresponse"></div>