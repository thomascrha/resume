FROM ubuntu

RUN apt-get update -y && \
    apt-get install --no-install-recommends -y \
        make \
        curl \
        git \
        ca-certificates \
        zip

WORKDIR /app
COPY . /app/

RUN make convert
