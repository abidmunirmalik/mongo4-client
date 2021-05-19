FROM centos:7
RUN yum -y install epel-release java-1.8.0-openjdk && yum -y install git jq && \
    yum -y install https://repo.mongodb.org/yum/redhat/7/mongodb-org/4.4/x86_64/RPMS/mongodb-org-shell-4.4.6-1.el7.x86_64.rpm
