FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN funtoonsmultimediaofficial/Ultra-Forward-Bot
WORKDIR /Ultra-Forward-Bot
COPY . /Ultra-Forward-Bot
EXPOSE 8080 5001 5000 8000 80
CMD ["python", "main.py"]
