#using official python as parent image
FROM python:3.8-slim

#set working directory
WORKDIR /app

#Copying the current dir contents to the container
COPY . /app

#Installing any needed packages needed from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

#Expose at port 5000
EXPOSE 5000

# define environment variable
ENV FLASK_APP=app.py

# Run the flask app
CMD [ "flask" ,"run","--host=0.0.0.0"]