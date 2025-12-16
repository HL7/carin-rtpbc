[Previous Page](error_handling.html)

<p></p>

<div xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.w3.org/1999/xhtml ../../schema/fhir-xhtml.xsd" xmlns="http://www.w3.org/1999/xhtml">
<blockquote class="stu-note">
	The initial version of the RTPBC IG did not provide specific guidance for authenticating with data sources and authorizing release of information.
	STU2 recommends use of the SMART on FHIR specification for accessing RTPBC data sources.
</blockquote>
</div>

<p></p>

<p class="new-content">All following content preceding Additional Guidance is new in STU2. <b>This section is currently very draft and incomplete.</b></p>

<p></p>


### Using SMART on FHIR in RTPBC client applications

The [SMART App Launch](http://hl7.org/fhir/smart-app-launch/STU2.2) implementation guide provides features based on OAuth 2.0 that enable client applications to authorize, authenticate, and integrate with FHIR-based data systems. 

This guide recommends use of these patterns to enable patient applications to access RTPBC information in a manner consistent with other Patient Access API services.

<p></p>

#### Capabilities to support retrieval of patient-specific information

The following SMART on FHIR Capability Sets **SHOULD** be supported when retrieving from RTPBC data sources that return patient-specific information--such as an insurer system that returns responses containing a member's benefit balances and coverage information.

- [Patient Access for Standalone Apps](https://hl7.org/fhir/smart-app-launch/STU2.2/conformance.html#patient-access-for-standalone-apps)

<p></p>

#### Capabilities to support retrieval of non-patient-specific information

  Interactions with RTPBC data sources that supply non-patient-specific information such as discount pricing **SHOULD** support SMART [Backend Services](https://hl7.org/fhir/smart-app-launch/STU2.2/backend-services.html).

<p></p>

###  Token Introspection

RTPBC data sources **SHALL** support token introspection defined by the SMART App Launch Guide. For more details and additional consideration, see SMART App Launch's [Token Introspection](http://hl7.org/fhir/smart-app-launch/STU2.2/token-introspection.html#token-introspection).

<p></p>

### SMART Scopes

SMART's scopes allow access permissions to be given to a client application. To allow access to a patient's RTPBC information...  
** to be added: Specific scope(s) to be used in RTBPC exchanges

<p></p>

### Additional guidance

Implementers are expected to follow core [FHIR security principles](https://www.hl7.org/fhir/security.html).

In addition, the [FHIR Security and Privacy Module](http://hl7.org/fhir/R4/secpriv-module.html#6.0] [http://hl7.org/fhir/R4/secpriv-module.html) describes how to protect patient privacy. 

<p></p>
<p></p>

[Next Page](consumer_vs_provider_rtpbc.html)

