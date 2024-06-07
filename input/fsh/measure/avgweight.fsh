Instance: TZAvgWeight
InstanceOf: http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cv-measure-cqfm
Title: "TZAvgWeight"
Description: "TZAvgWeight"
* id = "TZAvgWeight"
* version = "0.1.0"
* status = #draft
* experimental = false
* date = "2024-06-07"
* name = "TZAvgWeight"
* title = "TZAvgWeight"
* description = "TZAvgWeight"

* scoring = $measure-scoring#continuous-variable
* library[+] = "http://example.org/Library/TZAvgWeight"
* extension[http://hl7.org/fhir/us/cqfmeasures/StructureDefinition/cqfm-populationBasis].valueCode = #Observation
* group[+]
  * population[initialPopulation]
    * description = "Initial Population"
    * id = "TZOWIP"
    * code = $measure-population#initial-population
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Initial Population"
  * population[measurePopulation]
    * description = "Measure Population"
    * id = "TZOWMP"
    * code = $measure-population#measure-population
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Measure Population"
  * population[measureObservation]
    * description = "Measure Observation"
    * extension[aggregateMethod].valueCode = #average
    * extension[criteriaReference].valueString = "TZOWMP-identifier"
    * id = "TZOWMO"
    * code = $measure-population#measure-observation
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Measure Observation"
  * stratifier[+]
    * id = "TZOWS"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Stratification"

