FROM basex/basexhttp:latest
MAINTAINER XMLLunchbox Team <xmllunchbox@wendellpiez.com>

# Update platform then copy Saxon jar where BaseX will find it
USER root
RUN apk update
COPY saxon/saxon9he.jar /usr/src/basex/basex-api/lib/saxon9he.jar
USER basex

# Copy XMLLunchbox resources into BaseX
#   ... XMLLunchbox XQuery modules plus anything local ...
COPY basex/repo   /srv/basex/repo
#   ... applications with their data ...
COPY basex/webapp /srv/basex/webapp

# to invoke:
# docker run -d -p 1984:1984 -p 8884:8984 boxer:latest
# --publish 1984:1984 \
# --publish 8984:8984 \
# user's data directory --volume "$(pwd)/basex/data":/srv/basex/data
