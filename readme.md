### Build an image:
```
docker build -t <name>:<tag> .
```

### Run interactive terminal in image
```
docker run -it <name>:<tag> bash
```
Note: Very helpful to prep unix os based build

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
