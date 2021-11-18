variable "ami" {
 type          = string
  default      = "ami-0074ef78ecb07948c"
}

variable "instance_type" {
  type = list
  default = ["t2.micro","t2.nano","t2.micro","t2.nano",]
  
}

variable "instance_name" {
  description   = "Value of the Name tag for the EC2 instance"
  type          = string
  default       = "NewInstance"
}

variable "key_name" {
  type          = string
  default       = "terraform"
}
variable "instance-count" {
	type = number
	default = "1"
}
variable "tag_ec2" {
	type = string
	default = "matts-ec2-server"
}


/*variable "subnets" {
   default = ["subnet-0f103b0615b6e854d","subnet-07b4c4d804cd875d9",]
}
*/

