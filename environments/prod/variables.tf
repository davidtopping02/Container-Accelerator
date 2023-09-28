variable "region_name" {
  description = "The name of the AWS Region, region countries accepted, eg London, Ohio, Tokyo..."
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
  default     = "t2.small"
}

variable "min_size" {
  description = "Minimum capacity of cluster"
  type = number
  default = 1
}
variable "max_size" {
    description = "Maximum capacity of cluster"
  type = number
  default = 2
}
variable "desired_size" {
  description = "Desired capacity of cluster"
  type = number
  default = 1
}

variable "eks_worker_on_demand" {
  description = "Set eks worker capacity type to ON_DEMAND, otherwise it will be set to SPOT"
  type        = bool
  default     = true
}

variable "subnet_mask" {
  description = "VPC CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}
