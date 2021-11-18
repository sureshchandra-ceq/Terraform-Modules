provider "aws" {
	region = var.aws_region
}


module "my_instance_module" {
        source = "./my_modules/instance"
        /*ami = "ami-0074ef78ecb07948c"
        instance_type ="t2.nano"*/
        instance-count = 3
        key_name = "terraform"
        
}      