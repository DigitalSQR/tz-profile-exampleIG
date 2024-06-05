Instance:   TZTestIPS
InstanceOf: http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips
Description:  "Test IPS"

* status = #final
* subject = Reference(PatientExample)
* date = "2024-06-05"
* author.display = "Test"
* title = "TZ Test IPS"
* section[sectionMedications]
  * emptyReason = #notasked
  * title = "Medications"
  * text
    * status = #empty 
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* section[sectionAllergies]
  * emptyReason = #notasked
  * title = "Allergies"
  * text
    * status = #empty 
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* section[sectionProblems]
  * emptyReason = #notasked
  * title = "Problems"
  * text
    * status = #empty 
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
* section[sectionVitalSigns]
  * title = "Vital Signs"
  * text
    * status = #empty 
    * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"></div>"
  * entry[+] = Reference(WeightExample)
  * entry[+] = Reference(HeightExample)
  * entry[+] = Reference(BPExample)