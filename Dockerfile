# 
# FROM python:3-slim
# 
# https://hub.docker.com/_/python
# 
# Docker configuration for Data Science with Python
#
FROM python:3-slim

# Default ENVIRONMENT VARS to make build
ARG DIR_APP=example-app
ARG PYTHON_ENV=production
ARG PORT_APP=1998

# Create src directory
RUN mkdir -p /home/python/src
# Set workdir
WORKDIR /home/python/src

# Install dependencies DEPRECATED IN ALPINE
#apk --no-cache --update-cache add gcc gfortran python python-dev py-pip build-base wget freetype-dev libpng-dev openblas-dev
#ln -s /usr/include/locale.h /usr/include/xlocale.h

# Install src dependencies
COPY src/$DIR_APP/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app source
COPY src/$DIR_APP .

# Replace this with your application's default port
EXPOSE $PORT_APP

# Run aplication [dev, prod]
CMD [ "python", "./example-app.py" ]
