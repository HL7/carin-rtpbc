### Example of Combined Insurance and Discount Price RTPBC Response (ClaimResponse)
This example illustrates how an intermediary would combine responses it gathers from:
  * the patient's insurer
  * a drug discount card source

The content returned by the insurer is captured in the ClaimResponse.item and first .addItem and includes coverage status, copay and other benefit information.

The content returned by the discount card source is present in the second and third .addItem elements and includes the discount prices and a reference to a Coverage resource containing information the the pharmacy will use to apply the coupon.