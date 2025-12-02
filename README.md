# CircuiTikZ-Designer-Docker

A GUI for drawing CircuiTikZ circuits 

- https://github.com/Circuit2TikZ/CircuiTikZ-Designer
- https://circuit2tikz.tf.fau.de/designer/

## Build Dockefile
```bash
docker build -t circuitikz-designer:latest .
```

```bash
docker run --rm -p 8080:80 circuitikz-designer:latest
```

## Run docker compose

```bash
# Build and start
docker-compose up -d
```

```bash
# Stop
docker-compose down
```
