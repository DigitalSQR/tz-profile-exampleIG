Profile: TZBloodPressure
Parent: Observation
Description: "An example profile of the Observation resource for blood pressure."

* subject 1..1 
* subject only Reference(TZPatient)
* code = http://loinc.org#55284-4
* value[x] 0..0
* component 2..2
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains systolic 1..1 and diastolic 1..1
* component[systolic]
  * code = http://loinc.org#8480-6
  * value[x] only Quantity
  * valueQuantity 1..1
    * system 1..1
    * system = "http://unitsofmeasure.org"
    * unit 1..1
    * unit = "mmHg"
    * code 1..1
    * code = #mmHg
    * value 1..1
* component[diastolic]
  * code = http://loinc.org#8462-4
  * value[x] only Quantity
  * valueQuantity 1..1
    * system 1..1
    * system = "http://unitsofmeasure.org"
    * unit 1..1
    * unit = "mmHg"
    * code 1..1
    * code = #mmHg
    * value 1..1

Instance: BPExample
InstanceOf: TZBloodPressure
Description: "An example of a patient blood pressure observation."
Usage: #example

* status = #final
* subject = Reference(PatientExample)
* code = http://loinc.org#55284-4
* component[systolic]
  * code = http://loinc.org#8480-6
  * valueQuantity = 80 http://unitsofmeasure.org#mmHg "mmHg"
* component[diastolic]
  * code = http://loinc.org#8462-4
  * valueQuantity = 170 http://unitsofmeasure.org#mmHg "mmHg"