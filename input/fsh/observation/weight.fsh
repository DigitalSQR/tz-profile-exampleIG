Invariant: tz-weight-valid
Description: "Make sure the weight is valid for humans"
Severity:    #error
Expression:  "value.ofType(Quantity).value > 0.1 and value.ofType(Quantity).value < 200"

Profile: TZWeight
Parent: Observation
Description: "An example profile of the Observation resource for weight in kg."

* obeys tz-weight-valid
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
* effectiveDateTime = 2024-06-05T10:00:00Z