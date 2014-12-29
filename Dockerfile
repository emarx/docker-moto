FROM dockerfile/python
RUN pip install moto

# Default port that moto listens on.
EXPOSE 5000

ENTRYPOINT ["moto_server"]
CMD ["--help"]
