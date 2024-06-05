Instance: TZTribeSearch
InstanceOf: SearchParameter
Title: "Search on the defined extension for tribe"
Usage: #definition

* status = #active
* code = #tribe
* base[+] = #Patient
* expression = "(extension('http://example.org/StructureDefinition/tribe').value.ofType(code))"
* type = #token
