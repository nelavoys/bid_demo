FROM python:3.6
MAINTAINER sathish

# Creating Application Source Code Directory
RUN mkdir -p /bid_demo/src

# Setting Home Directory for containers
WORKDIR /bid_demo/src

# Installing python dependencies
COPY requirements.txt /bid_demo/src
RUN pip install --no-cache-dir -r requirements.txt

# Copying src code to Container
COPY . /bid_demo/src/app

# Application Environment variables
ENV MODULE_NUMBER module_1


# Running Python Application
CMD ["python", "main.py"]

# Exposing Ports
EXPOSE 5035
