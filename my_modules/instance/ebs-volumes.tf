resource "aws_ebs_volume" "volumes" {
  count = "${var.instance-count}"
  availability_zone = "us-west-1c"
  type = "gp2"
  size = "5"
}

resource "aws_volume_attachment" "volumes-attachment" {
  count = "${var.instance-count}"
  device_name = "/dev/sdb"
  volume_id = "${element(aws_ebs_volume.volumes.*.id, count.index)}"
  instance_id = "${element(aws_instance.my_instance.*.id, count.index)}"
}

