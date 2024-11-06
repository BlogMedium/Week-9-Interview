module "web_server" {
  source = "./modules/ec2_instance" # Path to the child module
  instance_type = "t2.micro"
  ami           = "ami-0c55b159cbfafe1f0"
  tags = {
    Name = "WebServer"
  }
}

output "instance_id" {
  value = module.web_server.instance_id
}
