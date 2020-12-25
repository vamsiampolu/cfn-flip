FROM python:3-alpine

RUN python -m pip install --upgrade pip

ARG VERSION=1.2.3

# install a specific version of cfn-flip using
# pip3 install cfn-flip==<version>
RUN pip3 install cfn-flip==${VERSION}

ENTRYPOINT ["cfn-flip", "-j"]
