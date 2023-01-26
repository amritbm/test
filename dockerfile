
FROM python:3.10-slim-buster

COPY . /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD [ "python3", "app.py"]

# FROM python:3.10-slim-buster
# LABEL maintainer="amrit"
# COPY /target/spring-petclinic-1.5.1.jar /home/spring-petclinic-1.5.1.jar 
# CMD ["python3","-jar","/home/spring-petclinic-1.5.1.jar"]