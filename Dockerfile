FROM gcr.io/kodekloud/ansible-runner:master

RUN yum install -y jq
RUN pip install yq


ENTRYPOINT ["entrypoint"]
CMD ["ansible-runner", "run", "/runner"]
