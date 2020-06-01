<h3 id="rtpbc-responder">RTPBC Responder</h3>
<p><strong>SHALL</strong>: </p>
<ul>
<li>Support the <a href="http://hl7.org/fhir/OperationDefinition/MessageHeader-process-message">$process-message</a> operation</li>
<li>Support at least one use case defined in this Guide and listed in the <a href="use_cases.html">Use Cases</a> Section</li>
<li>Implement the RESTful behavior according to the HL7 FHIR specification</li>
<li>Support the JSON source format</li>
<li>Provide on the server a CapabilityStatement identifying the profiles supported</li>
</ul>
<br>
<p><strong>SHOULD</strong>: </p>
<ul>
<li>Support the XML source format</li>
<li>Identify the RTPBC profiles supported as part of the FHIR <code>meta.profile</code> attribute for each instance.</li>
</ul>

<br><br>