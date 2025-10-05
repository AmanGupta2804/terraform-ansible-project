variable "env" {
    description = "The environment for the deployment (e.g., dev, stg, prd)"
    type        = string   
}

variable instance_type {
    description = "The type of instance to use for the EC2 instance"
    type        = string   
}

variable "instance_count" {
    description = "The count of number of EC2 instances which we need"
    type        = number
   }

variable "ami" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string
}

variable "volume_size" {
    description = "The size of the EBS volume in GB"
    type        = number
   }