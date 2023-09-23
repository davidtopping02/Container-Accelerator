variable "region_name" {
  description = "The name of the AWS Region, region countrys accepted, eg London, Ohio, Tokyo..."
  type        = string
  default     = "London"
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

variable "eks_worker_on_demand" {
  description = "Set eks worker capacity type to ON_DEMAND, otherwise it will be set to SPOT"
  type        = bool
  default     = true
}
