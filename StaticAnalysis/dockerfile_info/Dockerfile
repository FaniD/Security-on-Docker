FROM ubuntu:latest
MAINTAINER Fani Dimou <fani.dimou92@gmail.com>

#Exposing port 80 tcp
EXPOSE 80/tcp

#Test 1
#Create file hello
#Permissions: By default r to everybody, w only to root
RUN echo "Hello everybody" > hello

#Create 2 users, userA with password A, userB with password B
RUN useradd userA && echo "userA:A" | chpasswd
RUN useradd userB && echo "userB:B" | chpasswd

#Create file greetings, create directory HelloB
RUN echo "Hello A" > greetings
RUN mkdir "HelloB"

#Test 2
#greetings: userA owner
#Permissions: rwx to userA, r to others
RUN chown userA:userA /greetings
RUN chmod 744 /greetings

#Test 3
#HelloB: userB owner
#Permissions: rwx to userB, r to others
RUN chown userB /HelloB/
RUN chmod 744 /HelloB/

ENTRYPOINT /bin/bash
