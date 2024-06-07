Instance: TZOverweight
InstanceOf: Measure
Title: "TZOverweight"
Description: "TZOverweight"
* id = "TZOverweight"
* version = "0.1.0"
* status = #draft
* experimental = false
* date = "2024-06-07"
* name = "TZOverweight"
* title = "TZOverweight"
* description = "TZOverweight"

* scoring = $measure-scoring#proportion
* library[+] = "http://example.org/Library/TZWeight"
* group[+]
  * population[+]
    * description = "Initial Population"
    * id = "TZOWIP"
    * code = $measure-population#initial-population
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Initial Population"
  * population[+]
    * description = "Numerator"
    * id = "TZOWN"
    * code = $measure-population#numerator
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Numerator"
  * population[+]
    * description = "Denominator"
    * id = "TZOWD"
    * code = $measure-population#denominator
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Denominator"
  * stratifier[+]
    * id = "TZOWS"
    * criteria.language = #text/cql-identifier
    * criteria.expression = "Stratification"

