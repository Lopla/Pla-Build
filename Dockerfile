# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN wget https://github.com/Lopla/Pla/archive/refs/heads/master_2021-01-04-02-44-07.zip

RUN unzip master_2021-01-04-02-44-07.zip

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/build-pla.sh"]
