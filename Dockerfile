FROM fredbcode/e2guardian:v5.5.dev-arm

LABEL maintainer='Christophe Gasmi <rekcah78@gmail.com>'
USER 0
RUN apt-get update && apt-get install -y wget
RUN cd /etc/e2guardian/lists/ && \
 wget ftp://ftp.ut-capitole.fr/pub/reseau/cache/squidguard_contrib/adult.tar.gz && \
 tar -zxvf adult.tar.gz && mkdir ./blacklists && mv adult ./blacklists && chown -cR e2guardian. ./blacklists/ && rm -rf adult.tar.gz

 RUN cd /etc/e2guardian/lists/example.group/ && \
 echo ".Include</etc/e2guardian/lists/blacklists/adult/domains>" >> bannedsitelist
 USER e2guardian