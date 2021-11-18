
/*resource "aws_instance" "my_instance"  {
	
       ami = var.ami
	instance_type = var.instance_type
        key_name = var.key_name
	tags = {
		Name = var.instance_name	
	}
}*/

resource "aws_instance" "my_instance" {
	count = length(var.instance_type)

  ami           = var.ami
  instance_type = var.instance_type[count.index]
  /*instance_type = var.instance_type
	count = "${var.instance-count}"*/
  tags = {
    Name = var.tag_ec2
  }
}