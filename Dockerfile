FROM devopsfaith/krakend:1.4.1
USER root
COPY CA.crt /usr/local/share/ca-certificates/
RUN /usr/sbin/update-ca-certificates --fresh
RUN apt update && apt install -y iputils-ping wget

