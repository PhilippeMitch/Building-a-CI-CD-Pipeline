#!/usr/bin/env bash

# Create an App Service in Azure.
az webapp up -n house-price-preiction -g Azuredevops

# view the logs:
az webapp log tail -n house-price-preiction -g Azuredevops