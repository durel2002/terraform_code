resource "aws_instance" "server1" {
   ami           = "ami-0b75f821522bcff85"
  instance_type = "t3.micro"

  tags = {
    Name        = "WebServer1"
    Environment = "Production"

  }
  key_name = "UBUN-DEL"

  # security_groups is a list
  security_groups = ["sg-0e302f687bdac0552"]

  # the vpc subnet id to launch the instance in
  subnet_id = "subnet-072df1b18ee0401fa"

}