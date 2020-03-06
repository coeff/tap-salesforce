FROM python:3.7-slim-buster
RUN mkdir /tap-salesforce


COPY . /tap-salesforce
WORKDIR /tap-salesforce

RUN python setup.py install
CMD ["tap-salesforce"]
