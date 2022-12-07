provide "aws" {
    region="eu-west-1"
    profile=var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-07ebfd5b3428b6f4d"
    instance_type = "t2.micro"
    key_name = "rabbimq"
    vpc_security_group_ids = [ "sg-0c5e482eb66163be2" ]
    tags = {
      "Name" = "var.name"
      "Group" = "var.group"
    }
}

