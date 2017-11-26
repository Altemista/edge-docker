# Overview of Edge Computing Showcase

The edge show case is compised of the following components:
* edge-anki-controller: A Node.js application handling the communication between the edge services (connected through Kafka) and the Anki cars (connected through BLE).
* edge-kafka: The message broker used by the microservcies. There will be topics for status updates from Anki Overdrive, commends to be sent to Anki Overdrive, and the activation / deactivation of use cases (per default, only one use case at a time is supported).
* edge-anki-twin: A Golang microservice listening for messages on the status topic and maintaining a "digital twin" of the Anki Overdrive. The digital twin can e.g. be used for visualisation and debugging. The twin can be configured to log the status update to stdout. The user interface visualising the current state of the Anki Overdrive is included as static content. Provided as single page app. The twin works both ways and the cars can be controlled in terms of speed and lane. The user interface to set the parameters required for controlling the drive use case (activate / deactivate / set speed / set lane) is included as static content.
* edge-uc-overtake: TODO
* edge-uc-obstacle: TODO
* edge-uc-collision: TODO
* edge-uc-platooning: TODO

## Running the Edge Showcase in Docker
Running the showcase in docker-compose is fairly easy. Make sure that the DOCKER_USER variable is set:
```
export DOCKER_USER=<your-docker-id>
```

Then run:
```
docker-compose up
```

This assumes that the edge components are available from Docker Hub. See respective projects on how to build and push the Docker images.

## References
* [Edge Anki Controller on GitHub](https://github.com/okoeth/edge-anki-twin)
* [Edge Anki Twin on GitHub](https://github.com/okoeth/edge-anki-twin)
