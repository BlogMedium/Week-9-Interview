# Week-9-Interview

## terraform 
### What is Infrastructure as Code with Terraform?

* Defining you infra into human readable code is called terraform. Provider is nothing but a plugin which allows you to interact with the cloud provider. basically it sends a api call to the cloud provider. examples for provider AWS, AZure,Oracle, Docker.
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

mkdir learn-terraform-aws-instance



## Build infrastruture

cd 

* learn resource blocks
* learn providers blocks

##  Manage terraform drift

* git clone https://github.com/hashicorp/learn-terraform-drift-management.git

* reference https://developer.hashicorp.com/terraform/tutorials/state/resource-drift


## How to Set precondition in terraform

git clone https://github.com/hashicorp-education/learn-terraform-drift-and-policy.git

#### Terraform Taint

Use case: Suppose you have an AWS EC2 instance managed by Terraform, and you suspect that the instance is in an unhealthy state and want to force its recreation.

Terraform taint command is used to mark a resource as "tainted," indicating that it needs to be recreated during the next terraform apply operation. Tainting a resource means that Terraform considers the resource to be potentially corrupted or out of sync with its desired state.

main.tf
```
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}
```
```
* terraform init
* terraform apply
* terraform state list
* terraform taint 
terraform taint aws_instance.example

# terraform taint aws_instance.example
Resource instance aws_instance.example has been marked as tainted.
ranjiniganeshan@Ranjinis-MacBook-Pro terraform-taint % 
#####

   
