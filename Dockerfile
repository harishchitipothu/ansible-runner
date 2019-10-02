FROM centos:7

RUN yum install https://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/ansible-2.7.13-1.el7.ans.noarch.rpm && yum clean all
