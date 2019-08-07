# Docker ParaView Web

To visualize the `.vtk` files you can run [ParaView Web][paraview]
on your system by using the [Dockerfile](./Dockerfile).

From inside the repo, run
```bash
docker build -t pvw-visualizer .

docker run -p 0.0.0.0:80:80 \
-v /path/to/vtk-files:/data \
-e PROTOCOL="ws" \
-e SERVER_NAME="localhost" \
-e EXTRA_PVPYTHON_ARGS="-dr" \
-it pvw-visualizer
```

Go to [http://localhost/visualizer](http://localhost/visualizer) to see
the application running.
