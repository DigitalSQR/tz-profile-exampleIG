## Example FHIR IG

To create a blank IG using the ig publisher docker image you can run these commands:

```
docker run -it --entrypoint su -v $(pwd):/home/publisher/ig hl7fhir/ig-publisher-base:latest publisher -s /bin/bash
npm install -g fsh-sushi
sushi init
```

You can take the default values for now for testing.

Then you'll exit that docker instance to change to the newly created IG directory.
```
exit
cd ExampleIG
docker run -it --entrypoint su -v $(pwd):/home/publisher/ig hl7fhir/ig-publisher-base:latest publisher -s /bin/bash
./_updatePublisher.sh
```
