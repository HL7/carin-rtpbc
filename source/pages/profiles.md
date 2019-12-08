---
title: Profiles defined as part of this Guide
layout: default
active: profiles
---

<!-- { :.no_toc } -->

<!-- TOC  the css styling for this is \pages\assets\css\project.css under 'markdown-toc'-->

* Do not remove this line (it will not be displayed)
{:toc}

<!-- end TOC -->

---
<br />

### Profiles

<table>
<colgroup>
  <col width="300">
  <col>
</colgroup>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-request-claim.html">RTPBC Request Profile (Claim)</a></td>
<td>This profile constrains the Claim resource so that it can serve as the *RTPBC Request* in the consumer real-time pharmacy benefit check process.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-response-claimresponse.html">RTPBC Response Profile (ClaimResponse)</a></td>
<td>This profile constrains the ClaimResponse resource to serve as the RTPBC Response in the consumer real-time pharmacy benefit check process. It uses the ClaimResponse's "predetermination" processing mode</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-patient.html">RTPBC Patient Profile</a></td>
<td>This profile constrains the Patient resource for carrying the limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process. In RTPBC, the sole purpose of patient information is to enable the responding payer/PBM to locate the patient's insurance information. From there, pricing and coverage information is determined based on the patient's member and coverage information maintained by the payer. </td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-medicationrequest.html">RTPBC Medication Request Profile</a></td>
<td>This profile constrains the MedicationRequest resource to convey a subset of prescription information required in the consumer real-time pharmacy benefit check (RTPBC) process. The content specifies the prescribed product and quantity, and references the prescribing practitioner and the patients' preferred pharmacy</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-practitioner.html">RTPBC Practitioner Profile</a></td>
<td>This profile constrains the Practitioner resource to convey identifying prescriber information required in the consumer real-time pharmacy benefit check (RTPBC) process.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-pharmacy-organization.html">RTPBC Pharmacy Profile (Organization)</a></td>
<td>This profile represents a pharmacy as used in the real-time pharmacy benefit check (RTPBC) process.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-coverage.html">RTPBC Coverage Profile</a></td>
<td>This profile constrains the Coverage resource for conveying the patient's pharmacy benefit information in an RTPBC request to an insurer.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-request-messageheader.html">RTPBC Request Message Header Profile</a></td>
<td>This profile constrains a MessageHeader resource for use in a Real-time Pharmacy Benefit Check (RTPBC) request bundle.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-response-messageheader.html">RTPBC Response Message Header Profile</a></td>
<td>This profile constrains a MessageHeader resource for use in a Real-time Pharmacy Benefit Check (RTPBC) response bundle.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-request-bundle.html">RTPBC Request Bundle Profile</a></td>
<td>This profile constrains a Bundle resource for use as the request in a Real-time Pharmacy Benefit Check (RTPBC) process.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-response-bundle.html">RTPBC Response Bundle Profile</a></td>
<td>This profile constrains a Bundle resource for use as the response in a Real-time Pharmacy Benefit Check (RTPBC) process.</td>
</tr>
</tbody>
</table>

<!-- ---------------- Excluding operation outcom    
<tr>
<td><a href="StructureDefinition-carin-rtpbc-OperationOutcome.html">CarinRtpbcExceptionResponse</a></td>
<td>This profile constrains the OperationOutcome resource for communicating situations when an exception prevents an insurer from returning a consumer real-time pharmacy benefit check response.</td>
</tr>
---------------- -->

<!-- Excluding coupon detail content from intial IG --------------------------------------
<tr>
<td><a href="StructureDefinition-carin-rtpbc-coupon-Coverage.html">CarinRtpbcCouponCoverage</a></td>
<td>This profile constrains the Coverage resource for conveying information about a discount coupon that a patient can apply against the cost of a medication product. It can represent either an issued coupon or a key that can be used to obtain a coupon.</td>
</tr>
----------------------------------------------------------------------------------- -->




### Extensions

<table>
<colgroup>
  <col width="300">
  <col>
</colgroup>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-extension-isAlternative.html">CarinRtpbcExtensionIsAlternative</a></td>
<td>This extension indicates that an added line item is to be interpreted as one of possibly multiple alternatives to the requested product or service. When isAlternative is true, the added line item is to be considered independently from any other added line items associated with the requested product or service.</td>
</tr>
</tbody>
</table>



### Message Definitions

<table>
<colgroup>
  <col width="300">
  <col>
</colgroup>
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="MessageDefinition-carin-rtpbc-request-message-definition.html">CarinRtpbcRequestMessageDefinition</a></td>
<td>Request for patient cost and coverage information for a prescribed medication</td>
</tr>
<tr>
<td><a href="MessageDefinition-carin-rtpbc-response-message-definition.html">CarinRtpbcResponseMessageDefinition</a></td>
<td>Response to a request for patient cost and coverage information for a prescribed medication</td>
</tr>
</tbody>
</table>