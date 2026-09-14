### Using SMART on FHIR in RTPBC client applications

The [SMART App Launch](http://hl7.org/fhir/smart-app-launch/STU2.2) implementation guide provides features based on OAuth 2.0 that enable client applications to authorize, authenticate, and integrate with FHIR-based data systems. 

This guide recommends use of these patterns to enable patient applications to access RTPBC information in a manner consistent with other Patient Access API services.

<p></p>

#### Capabilities to support retrieval of patient-specific information

§SEC-1:The following SMART on FHIR Capability Set **SHOULD** be supported when retrieving from RTPBC data sources that return patient-specific information--such as an insurer system that returns responses containing a member's benefit balances and coverage information.§

- [Patient Access for Standalone Apps](https://hl7.org/fhir/smart-app-launch/STU2.2/conformance.html#patient-access-for-standalone-apps)

<p></p>

#### Capabilities to support retrieval of non-patient-specific information

  §SEC-2:Interactions with RTPBC data sources that supply non-patient-specific information such as discount pricing **SHOULD** support SMART [Backend Services](https://hl7.org/fhir/smart-app-launch/STU2.2/backend-services.html).§

<p></p>

###  Token Introspection

§SEC-3:RTPBC data sources **SHALL** support token introspection defined by the SMART App Launch Guide. For more details and additional consideration, see SMART App Launch's [Token Introspection](http://hl7.org/fhir/smart-app-launch/STU2.2/token-introspection.html#token-introspection).§

<p></p>

### Additional guidance

Implementers are expected to follow core [FHIR security principles](https://www.hl7.org/fhir/security.html).

In addition, the [FHIR Security and Privacy Module](http://hl7.org/fhir/R4/secpriv-module.html#6.0] [http://hl7.org/fhir/R4/secpriv-module.html) describes how to protect patient privacy. 

<p></p>
<p></p>

