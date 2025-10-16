# Power Bomberman Docker

A minimal Power Bomberman container to run the server.

## Container Tags

The tags for this container will be in varying granularities. As a basis you have the following tags:

- `latest`: Always the latest major and minor version.
- `<version>`: E.g. `power-bomberman:0.7.7c
- `<version>.`<build-number>`: This is tied to the server version and build version if you want it completely pinned down.

## Environment Variables

- `PB_NAME`: Server name
- `PB_PORT`: Server port
- `PB_MAX_CLIENTS`: Maximum allowed clients to connect to the server. Any exceeding connection attempts will be rejected.
- `PB_MAX_ROOMS`: Maximum amount of rooms allowed to be running at the same time.
- `PB_LATENCY_MODE`: Latency mode. Lower is better! Possible options are low, medium, and high.

## Running With Docker

To run the server normally with docker, just execute

```sh
docker run -it --name power-bomberman -p 64640:64640 alicianibbles/power-bomberman:latest
```
