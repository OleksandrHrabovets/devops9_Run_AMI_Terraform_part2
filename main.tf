terraform {
    required_providers {
        aws = {
            source: "hashicorp/aws"
            version = "~>4.16"
        }
    }

    required_version = ">=1.2.0"
}

provider "aws" {
    region = "eu-central-1"
}

resource "aws_instance" "example_server" {
    ami = "ami-09ed476772e51c603"
    instance_type = "t2.micro"

    tags = {
        name = "DEVOPS"
    }
}