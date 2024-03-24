provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "RHEL" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "AdminKeypair"
  tags = {
    Name = "RHEL"
  }
}

resource "aws_instance" "Ubuntu" {
  count         = 1
  ami           = "ami-080e1f13689e07408"
  instance_type = "t2.medium"
  key_name      = "AminKeypair"
  tags = {
    Name = "Ubuntu"
  }
}
