[Previous Page](Information_content_and_FHIR_resources.html)

### Operation: $process-message
The RTPBC request is submitted using the $process-message operation on the processor's claim server...
* URL: [base]/$process-message

#### Process-message parameter and response
Like the option above, the $process-message operation takes a single FHIR&reg; resource input parameter consisting of a Bundle containing the Claim resource and referenced supporting resources, and returns a Bundle containing a ClaimResponse and supporting resources.

In addition, this method includes a MessageHeader resource in both the request and response.
* In the request, the MessageHeader's *focus.reference* points to the Bundle's Claim resource, per the <a href="MessageDefinition-rtpbc-request-message-definition.html">RtpbcRequestMessageDefinition.</a>
* In the response, the *focus.reference* points to the Bundle's ClaimResponse, per the <a href="MessageDefinition-rtpbc-response-message-definition.html">RtpbcResponseMessageDefinition.</a>

### Synchronous response

The response in the RTPBC exchange is expected to be synchronous, with real-time response times to support use in interactive patient-facing applications.

<br>

<a href="Bundle-rtpbc-bundle-request-03-w-header.html">Example bundled RTPBC request to payer/PBM. Using messaging ($process-message operation, with MessageHeaders)</a>

<a href="Bundle-rtpbc-bundle-response-03-w-header.html">Example bundled RTPBC response from payer/PBM. Using messaging ($process-message operation, with MessageHeaders)</a>


<br><br>

[Next Page](Security.html)