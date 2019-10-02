FROM gcr.io/kodekloud/ansible-runner:master

RUN yum install -y epel-release

RUN yum install -y jq
RUN pip install yq

RUN yum install -y sshpass

ENTRYPOINT ["entrypoint"]
CMD ["ansible-runner", "run", "/runner"]
