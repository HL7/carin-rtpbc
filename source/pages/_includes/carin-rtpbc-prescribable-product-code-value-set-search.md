The consumer Real-time Pharmacy Benefit Check (RTPBC) process enables medication products to be specfied using two types of identifier: NDC-11 or "prescribable" RxNorm code.
* 11-digit normalized NDC consisting of a 5-digit labeler segment, 4-digit product segment, and 2-digit package segment, with no dashes. Each segment is front-padded with a leading zero if the base NDC's segment has fewer digits than required by the normalized version. *Example: Base NDC 0777-3105-02 = normalized NDC-11 00777310502*
* The subset of RxNorm codes that state all of the following product aspects: the product name (distinguishing brand name vs. generic), strength and dose form. This set is composed of the term types, SCD (semantic clinical drug),SBD (semantic branded drug), GPCK (generic pack) and BPCK (brand name pack).

<br><br>

*This value set references a placeholder code system for the 11-digit normalized NDC which will be replaced before IG publishing with an HL7/FHIR-maintained URL (being established) referencing content maintained in the NLM/RxNorm data set. The placeholder contains only a small number of concepts, for illustration only.*

<br><br>