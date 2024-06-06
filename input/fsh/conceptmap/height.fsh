Instance:     HeightLoincToSnomed
InstanceOf:   ConceptMap
Description:  "Mapping from LOINC height to SNOMED height."
Usage:        #definition

* name = "HeightLoinctoSnomed"
* title = "LOINC Height to SNOMED Height"
* status = #active
* experimental = false
* date = "2024-06-06"

* group[+]
  * source = $LNC
  * target = $SCT
  * element[+]
    * code = #8302-2
    * target[+]
      * code = #50373000
      * equivalence = #equivalent