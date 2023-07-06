# Use the official PostgreSQL base image
FROM postgres

# Set environment variables
ENV POSTGRES_PASSWORD=postgres

# Install PostgreSQL client
RUN apt-get update && \
    apt-get install -y postgresql-client

# Copy SQL scripts to a directory inside the container
COPY setup.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port
EXPOSE 5432

# Start the PostgreSQL server
CMD ["postgres"]
