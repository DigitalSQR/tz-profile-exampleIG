Profile: TZHeight
Parent: Observation
Description: "An example profile of the Observation resource for heigt in cm."

* subject 1..1 
* subject only Reference(TZPatient)
* code = http://loinc.org#8302-2
* value[x] only Quantity
* valueQuantity 1..1
  * system 1..1
  * system = "http://unitsofmeasure.org"
  * unit 1..1
  * unit = "centimeters"
  * code 1..1
  * code = #cm
  * value 1..1

Instance: HeightExample
InstanceOf: TZHeight
Description: "An example of a patient height observation."
Usage: #example

* status = #final
* subject = Reference(PatientExample)
* code = http://loinc.org#8302-2
* valueQuantity = 200 http://unitsofmeasure.org#cm "centimeters"