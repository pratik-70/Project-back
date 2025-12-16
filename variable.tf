variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.124.0.0/16"

}

variable "public_subnet_cidrs" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
  default     = ["10.124.1.0/24", "10.124.2.0/24"]

}

variable "private_subnet_cidrs" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
  default     = ["10.124.3.0/24", "10.124.4.0/24"]
}

variable "instance_type" {
  description = "the type of instance to use for the web server"
  type        = string
  default     = "t3.nano"
}
variable "main_instance_count" {
  description = "Number of instances to launch for main"
  type        = number
  default     = 1

}

variable "key_name" {
  description = "EC2 key pair name to attach to instances"
  type        = string
  default     = "terraform"
}

variable "access_ip" {
  description = "CIDR block allowed to access instances (SSH)"
  type        = string
  default     = "128.185.168.208/32"
}