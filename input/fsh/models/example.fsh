Logical:    Example 
Title:      "TZ Example"
Description:  "TZ FHIR Training example logical model."

* firstname 1..1 string "First Name" "Patient's first name."
* lastname 1..1 string "Last Name" "Patient's last name."
* dob 1..1 date "Date of Birth" "Patient's date of birth."
* gender 0..1 code "Gender" "Patient's gender."
* gender from TZGender
* tribe 0..1 code "Tribe" "Patient's tribe."
* tribe from TZTribeVS
* mothersMaidenName 0..1 string "Mother's Maiden Name" "The Patient's Mother's maiden name."
* address 0..1 string "Address" "Patient's Address."
* identification 0..1 string "Identification" "Patient's identification number."
* weight 1..1 positiveInt "Weight" "Patient's weight in kg."
* height 1..1 positiveInt "Height" "Patient's height in cm."
* systolic 1..1 positiveInt "Systolic Blood Pressure" "Systolic Blood Pressure"
* diastolic 1..1 positiveInt "Diastolic Blod Pressure" "Diastolic Blood Pressure"

Mapping:  ExampleToPatient
Source:   Example
Target:   "Patient"

* -> "Patient"
* firstname -> "Patient.name.given"
* lastname -> "Patient.name.family"
* dob -> "Patient.birthDate"
* gender -> "Patient.gender"
* address -> "Patient.address.text"
* identification -> "Patient.identifier.value"
* tribe -> "Patient.extension.valueCode"
* mothersMaidenName -> "Patient.extension.valueString"


Mapping: ExampleToWeight
Source: Example
Target: "Observation"

* -> "Observation"
* weight -> "Observation.valueQuantity.value"

Mapping: ExampleToHeight
Source: Example
Target: "Observation"

* -> "Observation"
* height -> "Observation.valueQuantity.value"

Mapping: ExampleToBP
Source: Example
Target: "Observation"

* -> "Observation"
* systolic -> "Observation.component[0].valueQuantity.value"
* diastolic -> "Observation.component[0].valueQuantity.value"
