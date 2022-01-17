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


  # resource "aws_instance" "load_balancer_test" {
  #   ami           = "ami-0015a39e4b7c0966f"
  #   instance_type = "t2.micro"
  #   tags = {
  #     Name = "Load Balancer TEST"
  #   }

  resource "aws_instance" "load_balancer_test" {
  ami               = "ami-0015a39e4b7c0966f"
  instance_type     = "t2.micro"
  availability_zone = "eu-west-2a"
  key_name          = "Dev"

  filename = "nginx.conf"
  enable   = true
  content  = <<EOF
  events {}
http {
    server {
        listen 80;
        location / {
            proxy_pass http://frontend:8080;
        }
        location /petclinic/api {
            proxy_pass http://backend:9966/petclinic/api;
        }
    }
}
EOF

  network_interface {
    device_index         = 0
    network_interface_id = aws_network_interface.web_server_test.id
  }

  tags = {
    Name = "Load Balancer TEST"
  }
}
