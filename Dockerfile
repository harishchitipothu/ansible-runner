FROM gcr.io/kodekloud/ansible-runner:2.7

RUN yum install -y jq
RUN pip install yq

# Add user
RUN yum install -y sudo && yum clean all

RUN adduser thor && echo 'thor:mjolnir123' | chpasswd && usermod -aG wheel thor

RUN echo "thor    ALL=(ALL)   NOPASSWD:ALL" >> /etc/sudoers
