
resource "aws_instance" "WebServer01" {
  ami = "ami-01fee56b22f308154"
  instance_type = var.vmsize[2]
  tags          = {"Name" = var.instance_name[count.index]}

  count = 3
}

variable "vmsize" {
    default = ["t2.micro", "t2.nano", "t2.small"]
}