<h3 id="example-rtpbc-claimresponse-not-covered">RTPBC ClaimResponse - requested drug is not covered</h3>
<p>In this example:</p>
<ul>
<li>the requested medication is not covered by the patient's plan. The Benefit Restriction contains a value of "not-covered" and the adjucation shows an eligible amount of zero dollars.</li>
<li>the addItem contains an alternative drug that is covered, but with a requirement for prior authorziation and a quantity limit. Details of the quantity limit are conveyed in the processNote element.</li>
</ul>
<!--
<div><img src="rtpbc-claim-response-not-covered.png" alt="claimresponse"></div>
-->