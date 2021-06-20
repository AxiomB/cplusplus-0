FROM ubuntu:latest

RUN apt-get update && apt install -y build-essential

COPY src /src

WORKDIR /src

RUN g++ -o HelloWorld helloworld.cpp

CMD ["./HelloWorld"]