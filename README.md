# Azure DevOps
[![Build Status](https://dev.azure.com/odluser267231/sm-house-price-prediction/_apis/build/status%2FPhilippeMitch.Building-a-CI-CD-Pipeline%20(14)?branchName=main)](https://dev.azure.com/odluser267231/sm-house-price-prediction/_build/latest?definitionId=14&branchName=main)

[![Python application test with Github Actions](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/actions/workflows/pythonapp.yml)
# Building a CICD Pipeline
In this project, you will build a Github repository from scratch and create a scaffolding that will assist you in performing both Continuous Integration and Continuous Delivery. You'll use Github Actions along with a Makefile, requirements.txt and application code to perform an initial lint, test, and install cycle. Next, you'll integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service.

## Project Plan
Project plan and task tracking:
* A Trello board for the [project](https://trello.com/b/ZURVlW9y/public-project)
* A spreadsheet with the original and final [project plan](https://docs.google.com/spreadsheets/d/19qZFcrMGlzRFZnrQkB4GyfIqO_xq9uuW6aV1M_14b5I/edit?usp=sharing)

## Architectural diagram
![Alt text](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/blob/main/screenshots/app-diagram.png)

## Set Up a Github Repo and Azure Login
* Fork this repository to your personal github repository.
* [Install/enable Azure Pipelines](https://github.com/marketplace/azure-pipelines) has on your account.
* After installation, you will have to configure the Azure Pipeline to allow accessing all public repos in your Github account. Though, you can allow access to the specific repositories, but to keep it simple, we have chosen all repositories.
* Configure the Azure Pipeline app in Github >> Settings >> Integrations >> Applications
  
## Set Up Azure Cloud Shell
* Go to your Azure Portal
* Launch an Azure Cloud Shell environment and generate a ssh-keygen.
* Add [ssh-key to your github account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to integrate Github repository communication, this SSH keys eliminate the need to repeatedly enter your GitHub password, reducing the risk of unauthorized access.
* 
* In Azure Cloud Shell, clone the repo by following the bellow command.
```bash
git clone git@github.com:PhilippeMitch/Building-a-CI-CD-Pipeline.git
```
![](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/blob/main/screenshots/clone_project.png)
Replace the above repo link with your repo ssh link 
## Setup environment and Test the app
* Change into the new directory
  ```bash
  cd Building-a-CI-CD-Pipeline
  ```
* Create a virtual environment
```bash
make setup
```
* Activate the environment with bellow command
```bash
source ~/.House-Price-Prediction-CI-CD-Pipeline/bin/activate
```
![](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/blob/main/screenshots/env_setup.png)
* Install dependencies in the virtual environment and run tests
```bash
make all
```
![](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/blob/main/screenshots/make_all_2.png)
* Start the application in the local environment
  ```bash
  python app.py
  ```
  ![](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/blob/main/screenshots/run_app_portal.png)
  * Open a separate Cloud Shell to test the app and run the `make_prediction.sh` script
  ![](https://github.com/PhilippeMitch/Building-a-CI-CD-Pipeline/blob/main/screenshots/local_prediction.png)
## Deploy the app to an Azure App Service
Create an app service and initially deploy the app. Provide the web app name as a globally unique value.
```bash
  az webapp up --sku F1 -n [Your_unique_app_name] -g [resource-group] --location [location]
```
![](
