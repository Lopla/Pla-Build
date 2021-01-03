# Container image that runs your code
FROM alpine:3.10

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

RUN wget -O pla-sdk.zip https://github.com/Lopla/Pla/archive/refs/heads/master_2021-01-04-02-44-07.zip
RUN unzip pla-sdk.zip

RUN mv /Pla-refs-heads-master_2021-01-04-02-44-07 ~/Pla

ENTRYPOINT [ "/entrypoint.sh" ]