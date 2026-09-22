FROM pgvector/pgvector:0.8.6-pg18-bookworm

USER root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       postgresql-18-postgis-3 \
       postgresql-18-postgis-3-scripts \
    && rm -rf /var/lib/apt/lists/*

USER postgres
