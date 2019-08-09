# Docker ParaView Web

Visualize `.vtk` files using [ParaView Web][paraview]:

```bash
docker run --rm -ti -p 8000:80 -v /path/to/data:/data popperized/paraviewweb
```

Go to <http://localhost:8000/visualizer> to see the application 
running. If you would like to modify other parameters:

```bash
docker run -p 8000:80 \
  -v /path/to/vtk/data:/data \
  -e PROTOCOL="ws" \
  -e SERVER_NAME="localhost" \
  -e EXTRA_PVPYTHON_ARGS="-dr" \
  -it \
  popperized/paraviewweb
```

[paraview]: http://kitware.github.io/paraviewweb/
