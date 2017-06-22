FROM debian:9

LABEL no.fnord.maintainer="Stig Sandbeck Mathisen <ssm@fnord.no>" \
      no.fnord.version="0.1.0" \
      io.openshift.expose-services="11211:tcp"

## Prepare for installation
RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get -y install memcached \
 && apt-get clean

EXPOSE 11211

USER 1000
CMD /usr/bin/memcached
