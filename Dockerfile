FROM registry.access.redhat.com/ubi8/ubi-minimal

RUN microdnf install python3 jq

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
  && python3 get-pip.py

RUN pip install yq==2.12.2
