## Example FHIR IG


### To build this repo using the IG Publisher docker, from the checked out repo run:
```
docker run -it --entrypoint su -v $(pwd):/home/publisher/ig hl7fhir/ig-publisher-base:latest publisher -s /bin/bash
```

Once docker has started up, you can build the IG with this command:

```
./_genonce.sh
```

### How this was created

To create a blank IG using the ig publisher docker image you can run these commands:

```
docker run -it --entrypoint su -v $(pwd):/home/publisher/ig hl7fhir/ig-publisher-base:latest publisher -s /bin/bash
```
```
npm install -g fsh-sushi
sushi init
```

You can take the default values for now for testing.

Then you'll exit that docker instance to change to the newly created IG directory.
```
exit
cd ExampleIG
docker run -it --entrypoint su -v $(pwd):/home/publisher/ig hl7fhir/ig-publisher-base:latest publisher -s /bin/bash
```
```
./_updatePublisher.sh
```

If on windows, use this command for docker instead:
```
docker run -it --entrypoint su -v %cd%:/home/publisher/ig hl7fhir/ig-publisher-base:latest publisher -s /bin/bash
```
