ARG R_VERSION
FROM rocker/rstudio:${R_VERSION}

ARG bioc_ver=3.20

COPY Aptfile /tmp/Aptfile
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        $(cat /tmp/Aptfile | xargs) && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    truncate -s 0 /var/log/*log

# Copy and run the packages installation script
COPY packages.R /tmp/packages.R
RUN Rscript /tmp/packages.R

WORKDIR /home/rstudio