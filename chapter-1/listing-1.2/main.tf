provider "aws" {
 region = "ca-central-1"
}

resource "aws_instance" "helloworld" {
  ami = "ami-043e33039f1a50a56"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
