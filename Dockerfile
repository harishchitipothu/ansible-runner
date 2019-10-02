FROM centos:7

# Install Ansible
RUN yum install -y epel-release && \
	yum install -y python-pip sudo rsync openssh-clients && \
	yum install -y https://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/ansible-2.7.13-1.el7.ans.noarch.rpm && \
	localedef -c -i en_US -f UTF-8 en_US.UTF-8 && \
	yum clean all && rm -rf /var/cache/yum
