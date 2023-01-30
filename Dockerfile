# Use an official Python image as the base image
FROM python:latest

RUN pip install mysql-connector-python pandas fastapi
WORKDIR /usr/app/src
COPY extraccion.py ./
