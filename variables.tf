variable "instance_type" {
  type = string

  validation {
    condition = contains([
      "t2.micro", "t2.medium", "t2.nano"
    ], var.instance_type)
    error_message = "You are only allowed to choose the t2 type instances by your organization"
  }

  validation {
    condition     = var.instance_type == "t2.micro" || var.instance_type == "t2.nano"
    error_message = "You are alllowed to use only t2.micro and t2.nano"
  }
}

variable "ami_id" {
  type = string
  validation {
    condition     = var.ami_id == "ami-04680790a315cd58d"
    error_message = "You are not allowed to use other AMI ID'S which are  not falls under free tier"
  }

}

variable "no_of_instances" {
  type = number

  validation {
    condition     = var.no_of_instances >= 1
    error_message = "The count should be greater than 0"
  }

}