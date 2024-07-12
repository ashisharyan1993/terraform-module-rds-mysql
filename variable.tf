variable "engine" {
    type = string
}

variable "identifier" {
    type = string
}

variable "allocated_storage" {
    type = number
}

variable "engine_version" {
    type = string
}

variable "instance_class" {
    type = string
}

variable "username" {
    type = string
}

variable "password" {
    type = string
}

variable "parameter_group_name" {
    type = string
}

variable "skip_final_snapshot" {
    type = bool
    default = false
}

variable "publicly_accessible" {
    type = bool
    default = false
}

variable "vpc_id" {
    type = string
}

variable "rds_sg_name" {
    type = string
}

variable "private_subnet" {
  
}

variable "public_subnet" {
  
}