FROM ubuntu:16.04

MAINTAINER Jacob Bergam "Jabergam@gmail.com"

RUN apt-get update -y && \  
    apt-get install -y python3-pip python3-dev

COPY ./requirements.txt /requirements.txt

RUN pip3 install -r requirements.txt

COPY ./app /app
WORKDIR /app

ENTRYPOINT [ "python3" ]
CMD [ "app.py" ] 

# expose port
EXPOSE 5000