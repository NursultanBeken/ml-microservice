# Operationalize a machine learning microservice using kubernetes
[![CircleCI](https://circleci.com/gh/NursultanBeken/ml-microservice.svg?style=svg)](https://circleci.com/gh/NursultanBeken/ml-microservice)

Deploying fault-tolerant Machine Learning inference API using Kubernetes. Automate testing using CircleCI.


## Project Overview
Project goal is to operationalize working machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications.

Pre-trained, `sklearn` model has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). 

This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Prerequisite
* python3.7
* Docker + hub account
* Kubernetes (Minikube or Docker Desktop)
* kubectl
* hadolint

## Setup the Environment
* Create a virtualenv and activate it
```sh
python3 -m venv .env
source .env/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`
1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Publish Docker image into Hub `./upload_docker.sh`
4. Run in Kubernetes:  `./run_kubernetes.sh`

### Make predictions: `./make_prediction.sh`
Once the application is running, to make a prediction, you have to open a separate tab or terminal window. In this new window, navigate to the main project directory and call `./make_prediction.sh.`
This shell script is responsible for sending some input data to your containerized application via the appropriate port. 

### Kubernetes Steps
* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Files included:

* `.circleci` - circleci config scripts
* `model_data` - ML model related data (model, csv data)
* `output_txt_files` - project output files (docker, kubernetes)
* `app.py` - python web application entry point file
* `Dickerfile` - docker image config
* `make_prediction.sh` - make prediction HTTP call script
* `Makefile` - make file (install, test, lint steps)
* `requirements.txt` - web application dependencies (python, libraries)
* `run_docker.sh` - run docker container script
* `run_kubernetes.sh` - run kubernetes pod for the web app script
* `upload_docker.sh` - upload docker image to dicker hub script