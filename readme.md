# Getting Started
1. Install Docker CE
2. Build the Docker Image using build args
  - See the `Build an image` section below.
  - Once built, an image can be dispatched to N containers
  - There is not hot loading set up. Any changes, force a container rebuild
    - To keep an old version of a container, increment the tag (currently 0.1)
  - Builds and containers can get heavy
    - Remove old containers when they finish running
    - Remove old images that have been deprecated
3. Notes
  - The host machine's `localhost` is normally `172.17.0.1` within a running container
  - The docker IP is normally `172.17.0.2`

# Using Docker
### Build an image:
```
docker build --build-arg MYBUILDARG="ABCDEF1234567890" -t myimage:0.1 .
```

### Run interactive terminal in image
```
docker run -it myimage:0.1 bash
```
Note: Very helpful to prep unix os based builds

### Run a solver given scenario_ids
- To run a container and remove it once it has completed its job:
```
docker run --rm myimage:0.1 python3 execute.py
```
- To save the container state after finishing its job:
```
docker run myimage:0.1 python3 execute.py
```

### List Containers
```
docker ps -a
```

### Remove Containers
```
docker rm <container hash>
```

### Remove All Containers
```
docker rm $(docker ps -a -q)
```

### List Images
```
docker images -a
```

### Delete Image
```
docker rmi <name>:<tag>
```
```
docker rmi <image hash>
```

### Delete All Images
```
docker system prune -a
```
