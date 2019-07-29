FROM python:2.7-slim
RUN pip install virtualenv
RUN apt-get update -y && apt-get install git -y
ADD docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
