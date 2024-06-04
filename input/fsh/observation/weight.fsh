Profile: TZWeight
Parent: Observation
Description: "An example profile of the Observation resource for weight in kg."

* subject 1..1 
* subject only Reference(TZPatient)
* code = $LNC#29463-7
* value[x] only Quantity
* valueQuantity 1..1
  * system 1..1
  * system = $UCUM
  * unit 1..1
  * unit = "kilograms"
  * code 1..1
  * code = #kg
  * value 1..1

Instance: WeightExample
InstanceOf: TZWeight
Description: "An example of a patient weight observation."
Usage: #example

* status = #final
* subject = Reference(PatientExample)
* code = $LNC#29463-7
* valueQuantity = 20.2 $UCUM#kg "kilograms"