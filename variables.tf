variable "ec2_ami" {
  type        = list(string)
  description = "AMI"
  default     = []
}

variable "ec2_size" {
  type        = list(string)
  description = "EC2 Sizes"
  default     = []
}

variable "az_list" {
  type    = list(string)
  default = ["ap-southeast-2a", "ap-southeast-2b", "ap-southeast-2c"]
}

variable "subnet_cidr" {
  type    = list(string)
  default = ["10.10.1.0/24", "10.10.2.0/24", "10.10.3.0/24"]
}


variable "ebs_size" {
  type    = number
  default = 100
}

variable "env" {
  type    = string
  default = "prod"
}

variable "boolean" {
  type    = bool
  default = true
}

variable "standard_tags" {
  type = map(string)
  default = {
    technical = "CloudTeam"
    costgroup = "SRE"
    owner     = "SRE"
    WBS       = "1234SRE"
  }
}