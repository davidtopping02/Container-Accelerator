variable "region" {
  description = "The name of the AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Name of Virtual Private Cloud"
  type        = string
  default     = "container-accelerator-vpc"
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "Minimum capacity of single worker instance"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum capacity of single worker instance"
  type        = number
  default     = 4
}

variable "desired_size" {
  description = "Desired capacity of single worker instance"
  type        = number
  default     = 1
}

variable "eks_workers_on_demand" {
  description = "set EKS worker capacity type to ON_DEMAND, otherwise it will be set to SPOT"
  type        = bool
  default     = true
}

variable "eks_worker_instances" {
  description = "Number of worker instances to create"
  type        = number
  default     = 1
}

variable "subnet_mask" {
  description = "VPC CIDR range"
  type        = string
  default     = "172.20.0.0/16"
}
