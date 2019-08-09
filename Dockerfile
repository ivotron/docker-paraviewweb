FROM kitware/paraviewweb:pvw-v5.6.0-osmesa

# Copy the launcher config template
COPY config/launcher/config-template.json /opt/launcher/config-template.json

RUN ["/opt/paraviewweb/scripts/addEndpoints.sh", \
  "visualizer", "/opt/paraview/share/paraview-5.6/web/visualizer/www" \
]

ENV PROTOCOL=ws
ENV SERVER_NAME=localhost
ENV EXTRA_PVPYTHON_ARGS="-dr"

EXPOSE 80

ENTRYPOINT ["/opt/paraviewweb/scripts/start.sh"]
