provider "aws" {
    access_key = "placeholder"
    secret_key = "placeholder"
    region = "eu-west-2"
}

resource "aws_instance" "manager_node" {
    ami = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"
}

resource "aws_instance" "worker_node" {
    ami = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"
}

resource "aws_instance" "jenkins" {
    ami = "ami-0015a39e4b7c0966f"
    instance_type = "t2.medium"

}

resource "aws_instance" "load_balancer" {
    ami = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"

}