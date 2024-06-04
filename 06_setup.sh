#! /usr/bin/sh
# 以下のスクリプトをコピペして実行してください。

RESOURCE_GROUP="rg-dp100-labs"
WORKSPACE_NAME="mlw-dp100-labs"
COMPUTE_CLUSTER="aml-cluster"
az configure --defaults group=$RESOURCE_GROUP
az configure --defaults workspace=$WORKSPACE_NAME 

# Create data assets
echo "Create training data asset:"
az ml data create --type mltable --name "diabetes-training" --path ./diabetes-data 
az ml data create --type mltable --name "oj-training" --path ./orange-juice-data 

