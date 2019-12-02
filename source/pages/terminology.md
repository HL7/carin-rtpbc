---
title: Terminology
layout: default
active: terminology
---
<!-- { :.no_toc } -->
<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->
<!-- * Do not remove this line (it will not be displayed)
{:toc} -->
<!-- end TOC -->

<br>



### Value Sets

- [CARIN RTPBC Billing Unit Value Set](ValueSet-carin-rtpbc-billing-unit-value-set.html)
- [CARIN RTPBC Country Code Value Set](ValueSet-carin-rtpbc-country-code-value-set.html)
- [CARIN RTPBC Coverage Summary Value Set](ValueSet-carin-rtpbc-coverage-summary-value-set.html)
- [CARIN RTPBC Error Code Value Set](ValueSet-carin-rtpbc-error-code-value-set.html)
- [CARIN RTPBC Expanded Coverage Class Value Set](ValueSet-carin-rtpbc-expanded-coverage-class-value-set.html)
- [CARIN RTPBC Patient Pay Type Value Set](ValueSet-carin-rtpbc-patient-pay-type-value-set.html)
- [CARIN RTPBC Pharmacy Type Value Set](ValueSet-carin-rtpbc-pharmacy-type-value-set.html)
- [CARIN RTPBC Prescribable Product Code Value Set](ValueSet-carin-rtpbc-prescribable-product-code-value-set.html)
- [CARIN RTPBC State and Province Code Value Set](ValueSet-carin-rtpbc-state-and-province-code-value-set.html)

<br>

### Code Systems

##### **Code systems defined for use in the consumer Real-time Prescription Benefit Check (RTPBC) process**
The following code systems define consumer-friendly insurance coverage concepts for use in RTPBC responses: 
- [CARIN RTPBC Coverage Summary Code System](CodeSystem-carin-rtpbc-coverage-summary-code-system.html)
- [CARIN RTPBC Patient Pay Type Code System](CodeSystem-carin-rtpbc-patient-pay-type-code-system.html)
- [CARIN RTPBC Coupon Coverage Class Code System](CodeSystem-carin-rtpbc-coupon-coverage-class-code-system.html)

<br>

##### **Existing code and identifier systems maintained by other entities... which lack HL7/FHIR system URIs**

The CodeSystem resources below serve as temporary placeholders in this guide for existing code and identifier systems that currently do not have HL7/FHIR system URIs. 
Prior to publishing of the guide, each will be replaced with either... 
* an HL7-maintained code system URI *(NDC11, in process of being established)*
or 
* a NameSystem resource defined within this guide, which is currently not supported by the FHIR implementation guide publishing process *(NCPDP proprietary Provider ID, NCPDP proprietary code sets, Canada Post Province Code)* 

<br>
- [CARIN RTPBC Example NDC-11 Code System](CodeSystem-carin-rtpbc-example-ndc-11-code-system.html) *Preliminary HL7/FHIR URL: http://terminology.hl7.org/CodeSystem/ndc-11*
- [CARIN RTPBC Example NCPDP Provider ID Code System](CodeSystem-carin-rtpbc-example-provider-id-code-system.html) *([Proposed NamingSystem](NamingSystem-carin-rtpbc-NamingSystem-ncpdp-provider-id.html))*
- [CARIN RTPBC Example Reject Code System](CodeSystem-carin-rtpbc-example-reject-code-system.html) *([Proposed NamingSystem for NCPDP Reject Code (511-FB)](NamingSystem-carin-rtpbc-NamingSystem-ncpdp-reject-code.html))*
- [CARIN RTPBC Billing Unit Code System](CodeSystem-carin-rtpbc-billing-unit-code-system.html) *([Proposed NamingSystem for NCPDP Unit of Measure (600-28)](NamingSystem-carin-rtpbc-NamingSystem-ncpdp-unit-of-measure.html))*
- [CARIN RTPBC Pharmacy Type Code System](CodeSystem-carin-rtpbc-pharmacy-type-code-system.html) *([Proposed NamingSystem for NCPDP Pharmacy Type (955-HR)](NamingSystem-carin-rtpbc-NamingSystem-ncpdp-pharmacy-type.html))*
- [CARIN RTPBC Canadian Province Code System](CodeSystem-carin-rtpbc-canadian-province-code-system.html) *([Proposed NamingSystem](NamingSystem-carin-rtpbc-NamingSystem-canada-post-province-code.html))*

<br><br>


