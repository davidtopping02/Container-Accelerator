variable "region" {
  description = "The name of the AWS Region"
  type        = string
  default     = "eu-west-1"
}

variable "name" {
  description = "Name of Virtual Private Cloud"
  type        = string
  default     = "container-accelerator-vpc"
}


variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.small"
}