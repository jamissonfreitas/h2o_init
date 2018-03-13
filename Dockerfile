FROM python:3.6
MAINTAINER Jamisson Freitas <jamisson.s.freitas@accenture.com>

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN yes Y | apt-get update

RUN yes Y | apt-get install default-jre

RUN pip3 install -r requirements.txt

RUN pip install -f http://h2o-release.s3.amazonaws.com/h2o/latest_stable_Py.html h2o

CMD [ "bash" ]
