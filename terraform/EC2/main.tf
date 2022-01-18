resource "aws_instance" "manager_node" {
  ami           = var.ami
  instance_type = var.instance_micro
  subnet_id     = var.subnet_1
  tags = {
    Name = "Manager Node"
  }

}

resource "aws_instance" "worker_node" {
  ami           = var.ami
  instance_type = var.instance_micro
  subnet_id     = var.subnet_1
  tags = {
    Name = "Worker Node"
  }
}
resource "aws_instance" "jenkins" {
  ami           = var.ami
  instance_type = var.instance_medium
  subnet_id     = var.subnet_2
  tags = {
    Name = "CI/CD Server"
  }
}

# resource "aws_instance" "load_balancer" {
#   ami           = var.ami
#   instance_type = var.instance_micro
#   tags = {
#     Name = "Load Balancer"
#   }
# }



resource "aws_instance" "load_balancer" {
  ami               = var.ami
  instance_type     = var.instance_micro
  subnet_id         = var.subnet_2
  availability_zone = "eu-west-2a"
  key_name          = "Dev"

  #   filename = "nginx.conf"
  #   enable   = true
  #   content  = <<EOF
  #   events {}
  # http {
  #     server {
  #         listen 80;
  #         location / {
  #             proxy_pass http://frontend:8080;
  #         }
  #         location /petclinic/api {
  #             proxy_pass http://backend:9966/petclinic/api;
  #         }
  #     }
  # }
  # EOF

  network_interface {
    device_index         = 0
    network_interface_id = var.web_server_1
  }

  network_interface {
    device_index         = 1
    network_interface_id = var.web_server_2
  }


  tags = {
    Name = "Load Balancer"
  }
}
