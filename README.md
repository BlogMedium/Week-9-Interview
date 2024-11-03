# Week-9-Interview

## terraform 
### What is Infrastructure as Code with Terraform?

   -- Defining you infra into human readable code is called terraform. Provider is nothing but a plugin which allows you to interact with the cloud provider. basically it sends a api call to the cloud provider. examples for provider AWS, AZure,Oracle, Docker.
* Intialize - Install the required plugins
* plan - Preview the changes which terraform make
*  apply - Make the changes to the infra

## How to handle terraform providers

scenario 1: file called .terraform.lock.hcl is present the below clone. which tells which version of required providers needs to be used.



``` git clone https://github.com/hashicorp/learn-terraform-provider-versioning.git```

   
1. Look the sample terraform configuration and explain. Resource name and place holder.
2. Store state file


## How to handle remote state file in terraform 

cd backend folder and demo


## Build infrastruture

* learn resource blocks
* learn providers blocks


## How to Set precondition in terraform

git clone https://github.com/hashicorp-education/learn-terraform-drift-and-policy.git

   
