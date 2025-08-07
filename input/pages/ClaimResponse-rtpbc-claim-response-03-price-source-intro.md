<h3 id="example-rtpbc-claimresponse-the-rtpbc-response-">RTPBC ClaimResponse returned by a pricing source</h3>
<p>In this example:</p>
<ul>
<li>the requested medication is Prozac 10mg capsule, 60 capsules, and the requested pharmacy is Hometown Drug. Adjudication is returned in the ClaimResponse.item composite</li>
<li>the .item contains patient costs for the requested drug and pharmacy combination</li>
<li>the .addItem composite holds an alternative fulfillment (the requested drug at a different pharmacy). Adjudication is returned in the ClaimResponse.addItem composite</li>
<li>a referenced pharmacy Organization resource describes the alternative pharmacy option identified by the pricing source</li>
</ul>
<!-- 
<div><img src="rtpbc-claim-response-03-price-source.png" alt="claimresponse"></div>
-->