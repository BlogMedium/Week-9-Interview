variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ami" {
  description = "AMI ID for the instance"
  type        = string
}

variable "tags" {
  description = "Tags for the instance"
  type        = map(string)
  default     = {}
}
