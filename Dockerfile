ARG R_VERSION
FROM rocker/rstudio:${R_VERSION}

COPY Aptfile /tmp/Aptfile
RUN apt-get update -qq && DEBIAN_FRONTEND=noninteractive apt-get -yq dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
        $(cat /tmp/Aptfile | xargs) && \
    apt-get clean && \
    apt-get purge && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    truncate -s 0 /var/log/*log

# Install base packages
COPY base-packages.R /tmp/base-packages.R
RUN Rscript /tmp/base-packages.R

# Install user packages
COPY user-packages.R /tmp/user-packages.R
RUN Rscript /tmp/user-packages.R

WORKDIR /home/rstudio