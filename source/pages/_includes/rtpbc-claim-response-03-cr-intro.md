### Example RTPBC ClaimResponse (the "RTPBC response")

In this example:
* the requested medication is Prozac 10mg capsule, 60 capsules, and the requested pharmacy is Hometown Drug. Adjudication is returned in the ClaimResponse.item composite
* the .item contains patient costs for the requested drug and pharmacy combination
* the .addItem composite holds an alternative fulfillment (the requested drug at a different pharmacy) and pricing that includes a coupon discount. Adjudication is returned in the ClaimResponse.addItem composite
* a referenced pharmacy Organization resource describes the alternative pharmacy option identified by the processor
* a referenced Coverage resource contains information that can be used to request a coupon

<br/>

<!-- <div><img src="images/rtpbc-claim-response-03.png" alt="claimresponse"></div> -->

<br/>