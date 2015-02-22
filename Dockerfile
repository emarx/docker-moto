FROM dockerfile/python
RUN pip install http://github.com/spulec/moto/archive/master.zip

# Create boto endpoints.json with "moto" region
COPY endpoints.json /opt/moto/
VOLUME ["/opt/moto"]

# Default port that moto listens on.
EXPOSE 5000

ENTRYPOINT ["moto_server"]
CMD ["--help"]
