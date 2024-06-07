library TZAvgWeight version '0.1.0'

using FHIR version '4.0.1'

include FHIRCommon version '4.0.1' called FC 
include FHIRHelpers version '4.0.1'
include TZConcepts version '0.1.0' called Cx

parameter "Measurement Period" Interval<DateTime> default Interval[@2023-01-01T, @2024-12-31T]


context Patient

define "Initial Population":
  "Weight Observations"

define "Measure Population":
  "Initial Population"

define "Weight Observations":
  ["Observation" : Cx."Body Weight"] Obs
    where (Obs.effective before end of "Measurement Period" and Obs.effective after start of "Measurement Period")
    sort by date from (effective as FHIR.dateTime) desc

define "Weighed Patients":
  exists("Weight Observations")

define function "Measure Observation" (observation Observation) :
  observation.value.value

define "Last Weight":
  (First("Weight Observations"))

define "Stratification":
  Patient.gender & ':' & "Age Range"

define "Age Range":
  case
    when AgeInYearsAt(end of "Measurement Period") in Interval[0, 20] then '0-20'
    else '>20'
  end

