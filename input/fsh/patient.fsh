Extension:    Tribe
Id:           tribe
Title:        "Tribe Extension"
Description:  "Tribe Extension"

Context: Patient
* value[x] only code
* valueCode from TZTribeVS


Profile: TZPatient
Parent: Patient
Description: "An example profile of the Patient resource."
* name 1..*
  * given 1..*
  * family 1..1
* birthDate 1..1
* gender 0..1
* gender from TZGender
* extension contains Tribe named tribe 0..1 
    and $mothersMaiden named mothersMaidenName 0..1
* address
  * text 1..1
* identifier 1..*
  * system 1..1
  * value 1..1


Instance: PatientExample
InstanceOf: TZPatient
Description: "An example of a patient."
Usage: #example
* name
  * given = "Tanzania"
  * family = "Patient"
* birthDate = "2000-01-01"
* gender = #male
* extension[tribe].valueCode = #chagga
* address.text = "123 Test St."
* identifier
  * system = "http://example.com/nationalId"
  * value = "12345"