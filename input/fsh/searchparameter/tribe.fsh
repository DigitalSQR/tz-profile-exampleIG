Instance: TZTribeSearch
InstanceOf: SearchParameter
Title: "Search on the defined extension for tribe"
Description: "Search parameter for the tribe extension."
Usage: #definition

* name = "TZTribe"
* status = #active
* code = #tribe
* base[+] = #Patient
* expression = "(extension('http://example.org/StructureDefinition/tribe').value.ofType(code))"
* type = #token
