FROM gcr.io/kodekloud/ansible-runner:2.7

RUN yum install -y jq
RUN pip install yq


