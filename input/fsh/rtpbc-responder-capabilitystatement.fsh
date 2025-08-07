Instance: rtpbc-responder
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://hl7.org/fhir/us/carin-rtpbc/CapabilityStatement/rtpbc-responder"
* version = "1.0.0"
* name = "RtpbcResponderCapabilityStatement"
* title = "RTPBC Responder Capability Statement"
* status = #active
* experimental = false
* date = "2019-12-08T00:00:00-05:00"
* publisher = "'HL7 International / Pharmacy"
* contact[0].name = "'HL7 International / Pharmacy"
* contact[=].telecom.system = #url
* contact[=].telecom.value = "http://www.hl7.org/Special/committees/medication"
* contact[+].name = "Frank McKinney"
* contact[=].telecom.system = #email
* contact[=].telecom.value = "fm@frankmckinney.com"
* description = "This CapabilityStatement describes the expected capabilities of a server that is capable of responding to a Real-time Pharmacy Benefit Check (RTPBC) request transacted with the `$process-message` operation."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[+] = #json
* patchFormat = #application/json-patch+json
// * implementationGuide = "http://hl7.org/fhir/us/carin-rtpbc/ImplementationGuide/carin-rtpbc"
* rest.mode = #server
* rest.documentation = "RTPBC Responder **SHALL**: 1. Support the $process-message operation. 2. Support at least one use case defined in this IG and listed in the Use Cases section. 3. Implement the RESTful behavior according to the FHIR specification. 4. Support the JSON source format. 5. Provide on the server a CapabilityStatement identifying the profiles supported. RTPBC Responder **SHOULD**: 1. Support the XML source format. 2. Identify the RTPBC profiles supported as part of the FHIR `meta.profile` attribute for each instance."
* rest.security.description = "Implementers are expected to follow core FHIR security principles (https://www.hl7.org/fhir/security.html).In addition, the FHIR Security and Privacy Module (http://hl7.org/fhir/R4/secpriv-module.html) describes how to protect patient privacy. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* rest.operation.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.operation.extension.valueCode = #SHALL
* rest.operation.name = "process-message"
* rest.operation.definition = "http://hl7.org/fhir/OperationDefinition/MessageHeader-process-message"