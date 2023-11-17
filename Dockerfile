FROM alpine:latest

RUN apk add --no-cache bash

# Set the working directory inside the container
WORKDIR /app

# Copy the shell script into the container
COPY entrypoint.sh .

# Make the shell script executable
RUN chmod +x entrypoint.sh

# Set the shell script as the entry point
ENTRYPOINT ["/app/entrypoint.sh"]