[Previous Page](information_content_and_fhir_resources.html)

### Use of representative NDC11 drug identifiers

This implementation guide enables clients to identify the patient's medication using 'representative NDC 11' identifiers. A representative NDC 11 has two important characteristics:

- it consists of 11 digits and no dashes or spaces
- it is selected by the submitting system to accurately represent the desired medication's product name, strength and dose form.

Details on determining an appropriate representative NDC 11 are available in the [SCRIPT Implementation Recommendations](https://www.ncpdp.org/NCPDP/media/pdf/SCRIPT-Implementation-Recommendations.pdf) document, located on the public ePrescribing site of the National Council for Prescription Drug Programs (NCPDP). 

### RTPBC response information is "point in time"
The information contained in the RTPBC response must reflect patient cost and coverage as of the date and time the request is received. The implementation guide expects that all responses are calculated using the patient's current insurance coverage and current cost information; it doesn't enable requests for information related to future or past events.

### Cash prices and other costs in the RTPBC response
The Patient Pay Type value set specifies different patient costs that may be returned in an RTPBC response. Included are:

- Costs related to the patient's insurance coverage, such as copay, coinsurance and deductible amounts. These are expected to be returned when the responder is an insurer or their agent
- Cash prices and discounts available when the patient opts to pay cash for their prescription rather than submitting through their insurance. These types are expected to be returned when the responder is a discount pricing source or other responder that is not the patient's insurer.

### Alternatives in the RTPBC response
The responder is encouraged to return all relevant alternatives to the submitted medication and pharmacy. An alternative is any drug + pharmacy combination that differs from what was specified in the request:

- a different medication, but at the submitted pharmacy
-  the requested medication at a different pharmacy
- different medication and pharmacy than submitted.

Pharmacy alternatives can be particularly valuable to the patient as they decide where to have their prescription dispensed. Consider the patient's location when determining pharmacy options, along with pharmacy-related differences in the patient's out-of-pocket costs.

**Note regarding medication alternatives:** Alternatives returned in the response may or may not be appropriate for the given patient, and other alternatives may be available that are not returned in the RTPBC response.

### Consistency between implementations of consumer and provider-focused benefit check (NCPDP) processes
When a party that has implemented the responder role of this implementation guide and can also respond to the provider-focused NCPDP Real-time Prescription Benefit (RTPB) transaction, it SHALL ensure that it returns consistent values for information that is common between the two standards.

While the consumer and provider exchanges each contain unique content for its audience, it is very important that information that is common to both is reported consistently -- to support discussion between the patient and provider and to avoid confusion. 

For example, the total out of pocket cost returned for a given patient medication must be the same whether reported by the consumer or provider messaging. And the the Benefit Restriction information returned in the response described in this guide must accurately summarize benefit restrictions details returned in the NCPDP provider-focused RTPB transaction.

This guide was designed to be compatible with the NCPDP RTPB transaction and uses the same processing assumptions and information definitions wherever possible.

### Searching

The real-time benefit check process is a point-in-time exchange that does not result in persisted information for later client retrieval.

<br><br>

[Next Page](submission_method.html)