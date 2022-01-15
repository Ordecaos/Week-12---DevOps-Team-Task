  resource "aws_instance" "manager_test" {
    ami           = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"
    tags = {
      Name = "Manager TEST"
    }

  resource "aws_instance" "worker_test" {
    ami           = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"
    tags = {
      Name = "Worker TEST"
    }

  resource "aws_instance" "jenkins_test" {
    ami           = "ami-0015a39e4b7c0966f"
    instance_type = "t2.medium"
    tags = {
      Name = "CI/CD Server TEST"
    }


  resource "aws_instance" "load_balancer_test" {
    ami           = "ami-0015a39e4b7c0966f"
    instance_type = "t2.micro"
    tags = {
      Name = "Load Balancer TEST"
    }