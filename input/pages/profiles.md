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
<td><a href="StructureDefinition-rtpbc-request-claim.html">RTPBC Request Profile (Claim)</a></td>
<td>This profile constrains the Claim resource so that it can serve as the RTPBC Request in the consumer real-time pharmacy benefit check process.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-response-claimresponse.html">RTPBC Response Profile (ClaimResponse)</a></td>
<td>This profile constrains the ClaimResponse resource to serve as the RTPBC Response in the consumer real-time pharmacy benefit check process. It uses the ClaimResponse's "predetermination" processing mode.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-patient.html">RTPBC Patient Profile</a></td>
<td>This profile constrains the Patient resource for carrying the limited patient information required in the consumer real-time pharmacy benefit check (RTPBC) process. In RTPBC, the sole purpose of patient information is to enable the responding payer/PBM to locate the patient's insurance information. From there, pricing and coverage information is determined based on the patient's member and coverage information maintained by the payer. </td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-medicationrequest.html">RTPBC Medication Request Profile</a></td>
<td>This profile constrains the MedicationRequest resource to convey a subset of prescription information required in the consumer real-time pharmacy benefit check (RTPBC) process. The content specifies the prescribed product and quantity, and references the prescribing practitioner and the patients' preferred pharmacy.</td>
</tr>
<tr>
<td>US Core Practitioner Profile</td>
<td>This implementation guide uses the US Core Practitioner profile with no additional constraints.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-pharmacy-organization.html">RTPBC Pharmacy Profile (Organization)</a></td>
<td>This profile represents a pharmacy as used in the real-time pharmacy benefit check (RTPBC) process. This profile is based on the US Core Organization profile.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-coverage.html">RTPBC Coverage Profile</a></td>
<td>This profile constrains the Coverage resource for conveying the patient's pharmacy benefit information in an RTPBC request to an insurer.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-request-messageheader.html">RTPBC Request Message Header Profile</a></td>
<td>This profile constrains a MessageHeader resource for use in a Real-time Pharmacy Benefit Check (RTPBC) request bundle.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-response-messageheader.html">RTPBC Response Message Header Profile</a></td>
<td>This profile constrains a MessageHeader resource for use in a Real-time Pharmacy Benefit Check (RTPBC) response bundle.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-request-bundle.html">RTPBC Request Bundle Profile</a></td>
<td>This profile constrains a Bundle resource for use as the request in a Real-time Pharmacy Benefit Check (RTPBC) process.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-response-bundle.html">RTPBC Response Bundle Profile</a></td>
<td>This profile constrains a Bundle resource for use as the response in a Real-time Pharmacy Benefit Check (RTPBC) process.</td>
</tr>
</tbody>
</table>

<br>


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
<td><a href="StructureDefinition-rtpbc-isAlternative-extension.html">RTPBC IsAlternative Extension</a></td>
<td>This extension indicates that an added line item is to be interpreted as one of possibly multiple alternatives to the requested product or service. When isAlternative is true, the added line item is to be considered independently from any other added line items associated with the requested product or service.</td>
</tr>
<tr>
<td><a href="StructureDefinition-rtpbc-benefitRestriction-extension.html">RTPBC BenefitRestriction Extension</a></td>
<td>This extension conveys benefit restrictions that apply to a prescription product and pharmacy combination.</td>
</tr>
</tbody>
</table>

<br>


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
<td><a href="MessageDefinition-rtpbc-request-message-definition.html">RTPBC Request MessageDefinition</a></td>
<td>Request for patient cost and coverage information for a prescribed medication</td>
</tr>
<tr>
<td><a href="MessageDefinition-rtpbc-response-message-definition.html">RTPBC Response MessageDefinition</a></td>
<td>Response to a request for patient cost and coverage information for a prescribed medication</td>
</tr>
</tbody>
</table>