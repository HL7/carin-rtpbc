[Previous Page](security.html)

The consumer Real-time Prescription Benefit Check (RTPBC) profile is an adaptation of the existing NCPDP Real-time Prescription Benefit (RTPB) standard which was designed for use in provider systems. That specification includes content such as drug utilization review (DUR) alerts and other information to inform a provider's prescribing process.
<br>In contrast, this patient-focused version of RTPBC aims to include only the coverage and cost information that is useful and meaningful to patients.
<br>

### Why a dedicated consumer-focused RTPBC solution?

The aim of this implementation guide is to provide the information a patient needs to understand how their prescription will be covered by their insurance, and the out-of-pocket costs they might face—whether they use their insurance or if they choose to pay cash.

Focusing on the consumer's needs brings additional information and participants into scope, such as real-world cash price comparisons from pricing source entities, and discounts available to the patient through manufacturer programs.

The consumer focus also sets a different frame for the information to be returned by an insurer. For example, differences in copay costs between nearby in-network and out-of-network pharmacies become a high priority, and characterizing coverage restrictions and limits in a way that is clear and meaningful to a typical patient becomes essential.

The consumer-focused RTPBC IG establishes a vehicle for this information exchange that can evolve independently over time to best meet the needs of the patient.

### Information that is out of scope of the consumer-focused exchange

In line with the goals and audience of this exchange, response information was either included or excluded from the specification based on whether it represents coverage or cost information relevant to the patient.

For example, in the primary consumer use case, the patient's medication has already been prescribed and the practitioner has already considered potential contraindications and other factors--ultimately deciding to move ahead with the therapy. Because Consumer RTPBC does not seek to inform the prescribing decision, but instead provide the consumer with cost and coverage information after that decision is made, drug utilization review (DUR) and restricted opioid prescriber information is not included in the response.

Likewise, because the patient is the user of this exchange's information, the response does not return "cost to plan" data returned by other standards to be considered during the prescribing process.

Future versions of the guide will reflect feedback from implementers, and content will likely evolve over time.

### Consumer vs. Provider RTPBC content comparison

The table below summarizes the structure and content of the NCPDP real-time pharmacy benefit check transactions, on which consumer RTPBC is based, and which of those are pertinent in the consumer version.

* The element names, optionality and notes refer to the NCPDP transactions
* The Consumer Facing column indicates the content carried over to the consumer version described in this implementation guide.

<br>

<div><p>
  <img src="high-level-content-view-table.png" style="float:none">  
    </p>
</div>
<br><br>