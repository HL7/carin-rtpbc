### Example RTPBC ClaimResponse (the "RTPBC response")

In this example:
* the requested medication is Prozac 10mg capsule, 60 capsules, and the requested pharmacy is Hometown Drug. Adjudication is returned in the ClaimResponse.item composite
* the .item contains patient costs for the requested drug and pharmacy combination
* the .addItem composite holds an alternative fulfilment (the requested drug at a different pharmacy). Adjudication is returned in the ClaimResponse.addItem composite
* a referenced pharmacy Organization resource describes the alternative pharmacy option identified by the processor
* summary coverage information (e.g., Covered, Covered but requiring PA) is returned in the .processNote element - linked to the particular item using the processNote.number field

<br/>

<div><img src="images/rtpbc-claim-response-03.png" alt="claimresponse"></div>

<br/>