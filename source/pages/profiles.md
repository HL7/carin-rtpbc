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
<thead>
<tr>
<th>Name</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-OperationOutcome.html">CarinRtpbcExceptionResponse</a></td>
<td>This profile constrains the OperationOutcome resource for communicating situations when an exception prevents an insurer from returning a consumer real-time pharmacy benefit check response.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-pharmacy-Organization.html">CarinRtpbcPharmacy</a></td>
<td></td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-request-Claim.html">CarinRtpbcRequest</a></td>
<td>This profile constrains the Claim resource so that it can serve as the *RTPBC Request* in the consumer real-time pharmacy benefit check process</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-Coverage.html">CarinRtpbcRequestCoverageIdentifiers</a></td>
<td>This profile constrains the Coverage resource for carrying the pharmacy benefit information required in the consumer real-time pharmacy benefit check process</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-Patient.html">CarinRtpbcRequestPatientInfo</a></td>
<td>This profile constrains the Patient resource for carrying the limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process. In RTPBC, the sole purpose of patient information is to enable the responding payer/PBM to locate the patient's insurance information. From there, pricing and coverage information is determined based on the patient's member and coverage information maintained by the payer. </td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-Practitioner.html">CarinRtpbcRequestPrescriberInfo</a></td>
<td>This profile constrains the Practitioner resource to convey identifying prescriber information required in the consumer real-time pharmacy benefit check (RTPBC) process.</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-MedicationRequest.html">CarinRtpbcRequestPrescriptionInfo</a></td>
<td>This profile constrains the MedicationRequest resource to convey a subset of prescription information required in the consumer real-time pharmacy benefit check (RTPBC) process. The content specifies the prescribed product and quantity, and references the prescribing practitioner and the patients' preferred pharmacy</td>
</tr>
<tr>
<td><a href="StructureDefinition-carin-rtpbc-ClaimResponse.html">CarinRtpbcResponse</a></td>
<td>This profile constrains the ClaimResponse resource to serve as the RTPBC Response in the consumer real-time pharmacy benefit check process. It uses the ClaimResponse's "predetermination" processing mode</td>
</tr>
</tbody>
</table>


### Extensions

**No extensions are defined for this implementation guide**

