#! /usr/bin/sh
# 以下のスクリプトをコピペして実行してください。

RESOURCE_GROUP="rg-dp100-labs"
WORKSPACE_NAME="mlw-dp100-labs"
COMPUTE_CLUSTER="aml-cluster"
az configure --defaults group=$RESOURCE_GROUP
az configure --defaults workspace=$WORKSPACE_NAME 

# Create data asset
echo "Creating a data asset with name: diabetes-folder"
az ml data create --name diabetes-folder --path ./data 

# Create components
echo "Creating components"
az ml component create --file ./fix-missing-data.yml 
az ml component create --file ./normalize-data.yml 
az ml component create --file ./train-decision-tree.yml 
az ml component create --file ./train-logistic-regression.yml 