FROM centos:7.6.1810

RUN yum update -y
RUN yum install epel-release -y
RUN yum install -y python-pip git
RUN pip install virtualenv
RUN git clone https://github.com/apatrascu/python-interactive-tutorial /site
WORKDIR /site
EXPOSE 5000
ENTRYPOINT ["./run.sh"]
