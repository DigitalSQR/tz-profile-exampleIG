Instance:     MSDtoPORALG
InstanceOf:   ConceptMap
Description:  "Mapping from MSD to PORALG."
Usage:        #definition

* name = "MSDtoPORALG"
* title = "MSD to PORALG"
* status = #active
* experimental = false
* date = "2024-06-06"

* group[+]
  * source = http://moh.go.tz/MSD
  * target = http://poralg.go.tz/
  * element[+]
    * code = #10010007
    * target[+]
      * code = #10010007AB
      * equivalence = #equivalent
   * element[+]
    * code = #10010005
    * target[+]
      * code = #10010733AB
      * equivalence = #equivalent 
* group[+]
  * source = http://poralg.go.tz/
  * target = http://moh.go.tz/MSD
  * element[+]
    * code = #10010007AB
    * target[+]
      * code = #10010007
      * equivalence = #equivalent
   * element[+]
    * code = #10010733AB
    * target[+]
      * code = #10010005
      * equivalence = #equivalent 
* group[+]
  * source = http://moh.go.tz/NHIF
  * target = http://poralg.go.tz/