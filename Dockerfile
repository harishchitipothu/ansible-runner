FROM gcr.io/kodekloud/ansible-runner:master

RUN pip install yq


ENTRYPOINT ["entrypoint"]
CMD ["ansible-runner", "run", "/runner"]
