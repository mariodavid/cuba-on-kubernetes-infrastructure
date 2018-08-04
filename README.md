# cuba-on-kubernetes-infrastructure
CUBA on Kubernetes example - Infrastructure project

This project contains all required infrastructure work for Kubernetes through Terraform. This example leverages an existing Terraform module from the terraform module registry: [kubernetes-engine](https://registry.terraform.io/modules/google-terraform-modules/kubernetes-engine/google/1.15.0)


### Usage

In order to use this project to create a Kubernetes cluster, you'll need to:

1. activate the GKE API for your Google cloud project: https://console.developers.google.com/apis/api/container.googleapis.com/overview
2. create a service account and API key for using the GKE API (JSON)
3. put the downloaded API Key JSON file in this project (as account.json). NOTE: do not add it to your git repository

Execute the following statements:

Initialize the terraform project:
```
terraform init
```

Preview of resources that will be created via Terraform:
```
terraform plan
```


Resource creation via Terraform:
```
terraform apply
```
