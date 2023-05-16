# this is to pull the image of python as base image using which we create our own image
FROM python:3.8

#then we create a root folder /app on which we put all the files and folder of the project
WORKDIR /code

#and this is done to copy the requirements.txt to /app from our file directory
COPY ./requirements.txt /code/requirements.txt

#this install all the essentials in the image
RUN pip install -r /code/requirements.txt

#copy rest to the /app folder of the image
COPY ./app /code/app

CMD [ "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]