const { fakerZU_ZA: faker } = require('@faker-js/faker');

// Generate 20 FHIR patients
const patients = [];
const tribes = [ 
  "alagwa", "akie", "barabaig", "assa", "arusha",
"bembe", "bena", "bende", "bondei", "bungu",
"burunge", "chagga", "datooga", "dhaiso", "digo",
"doe", "fipa", "gogo", "goma", "gorowa",
"ha", "hadimu", "hadza", "hangaza", "haya",
"hehe", "holoholo", "ikizu", "ikoma", "iraqw",
"isanzu", "jiji", "jita", "kaguru", "kami",
"kara", "kerewe", "kimbu", "kinga", "kisi",
"konongo", "kuria", "kutu", "kwadza", "kwaya",
"lambya", "luguru", "lungu", "maasai", "machinga",
"magoma", "mahanji", "makonde", "makua", "malila",
"mambwe", "manyema", "manda", "meru", "matengo",
"matumbi", "maviha", "mbugwe", "mbunga", "mbugu",
"mpoto", "mwera", "ndali", "ndamba", "ndendeule",
"ndengereko", "ndonde", "ngasa", "ngindo", "ngoni",
"ngulu", "ngurimi", "iramba", "nindi", "nyakyusa",
"kwere", "nyambo", "nyamwanga", "nyamwezi", "nyanyembe",
"nyaturu", "nyiha", "pangwa", "pare", "pimbwe",
"pogolo", "rangi", "rufiji", "rungwa", "safwa",
"sagara", "sandawe", "sangu", "segeju", "shambaa",
"shirazi", "shubi", "suba", "sukuma", "sumbwa",
"swahili", "sonjo", "tongwe", "tumbuka", "vidunda",
"vinza", "wanda", "wanji", "ware", "yao",
"zanaki", "zaramo", "zigua", "zinza"
]
for (let i = 0; i < 20; i++) {
  // Generate a random date of birth between 1950 and 2000

  const gender = faker.person.sex()
    const pid = faker.string.uuid()
    const wid = faker.string.uuid()
    const hid = faker.string.uuid()
    const bpid = faker.string.uuid()
  const effective = faker.date.recent( { days: 365 } )
    const patient = {
        resourceType: "Patient",
        id: pid,
        extension : [{
          url : "http://example.org/StructureDefinition/tribe",
          valueCode : tribes[(Math.floor(Math.random() * tribes.length))]
        },
	  {
	    url: "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName",
	    valueString: faker.person.lastName()
	  }
	],
        name: [
            {
                family: faker.person.lastName(),
                given: [faker.person.firstName(gender)]
            }
        ],
        gender: gender,
        birthDate: faker.date.birthdate().toISOString().substring(0, 10),
        address: [
            {
                text: faker.location.streetAddress()
            }
        ]
    };
    patients.push({ fullUrl: "urn:uuid:"+pid, resource: patient, request: { method: "PUT", url: "Patient/"+pid } });

  const weight =  {
    "resourceType" : "Observation",
    "id": wid,
    "meta" : {
      "profile" : ["http://example.org/StructureDefinition/TZWeight"]
    },
    "status" : "final",
    "code" : {
      "coding" : [{
	"system" : "http://loinc.org",
	"code" : "29463-7"
      }]
    },
    "subject" : {
      "reference" : "Patient/"+pid
    },
    "effectiveDateTime": effective,
    "valueQuantity" : {
      "value" : faker.number.float({min: 44, max: 150, fractionDigits: 1}),
      "unit" : "kilograms",
      "system" : "http://unitsofmeasure.org",
      "code" : "kg"
    }
  };

    patients.push({ fullUrl: "urn:uuid:"+wid, resource: weight, request: { method: "PUT", url: "Observation/"+wid } });
  
  const height =  {
    "resourceType" : "Observation",
    "id": hid,
    "meta" : {
      "profile" : ["http://example.org/StructureDefinition/TZHeight"]
    },
    "status" : "final",
    "code" : {
      "coding" : [{
	"system" : "http://loinc.org",
	"code" : "8302-2"
      }]
    },
    "subject" : {
      "reference" : "Patient/"+pid
    },
    "effectiveDateTime": effective,
    "valueQuantity" : {
      "value" : faker.number.int({min: 148, max: 204 }),
      "unit" : "centimeters",
      "system" : "http://unitsofmeasure.org",
      "code" : "cm"
    }
  };

  patients.push({ fullUrl: "urn:uuid:"+hid, resource: height, request: { method: "PUT", url: "Observation/"+hid } });

  const bp = {
  "resourceType" : "Observation",
    "id": bpid,
  "meta" : {
    "profile" : ["http://example.org/StructureDefinition/TZBloodPressure"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "55284-4"
    }]
  },
  "subject" : {
    "reference" : "Patient/"+pid,
  },
  "effectiveDateTime": effective,
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8480-6"
      }]
    },
    "valueQuantity" : {
      "value" : faker.number.int({min: 50, max: 180}),
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmHg"
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "8462-4"
      }]
    },
    "valueQuantity" : {
      "value" : faker.number.int({min: 33, max: 120}),
      "unit" : "mmHg",
      "system" : "http://unitsofmeasure.org",
      "code" : "mmHg"
    }
  }]
}
 

  patients.push({ fullUrl: "urn:uuid:"+bpid, resource: bp, request: { method: "PUT", url: "Observation/"+bpid } });


}

// Create a FHIR bundle
const bundle = {
    resourceType: "Bundle",
    id: faker.string.uuid(),
    type: "batch",
    entry: patients
};

// Print the bundle as a JSON string
console.log(JSON.stringify(bundle, null, 2));

