resource "aws_instance" "manager_node" {
  ami                    = var.ami
  instance_type          = var.instance_micro
  subnet_id              = var.subnet_2
  vpc_security_group_ids = [var.web_traffic]
  tags = {
    Name = "Manager Node"
  }

  key_name  = "Dev"
  user_data = <<-EOF
            #!/bin/bash
            sudo apt update -y
            sudo apt upgrade
            sudo apt install -y curl jq
            curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
            sudo apt install -y nodejs
            sudo apt install -y npm
            curl https://get.docker.com | sudo bash
            version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
            sudo curl -L "https://github.com/docker/compose/releases/download/2.1.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
            sudo chmod +x /usr/bin/docker-compose
            sudo chmod 666 /var/run/docker.sock
            EOF
}

resource "aws_instance" "worker_node" {
  ami                    = var.ami
  instance_type          = var.instance_micro
  subnet_id              = var.subnet_2
  vpc_security_group_ids = [var.web_traffic]
  tags = {
    Name = "Worker Node"
  }

  key_name  = "Dev"
  user_data = <<-EOF
            #!/bin/bash
            sudo apt update -y
            sudo apt upgrade
            sudo apt install -y curl jq
            curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
            sudo apt install -y nodejs
            sudo apt install -y npm
            curl https://get.docker.com | sudo bash
            version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
            sudo curl -L "https://github.com/docker/compose/releases/download/2.1.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
            sudo chmod +x /usr/bin/docker-compose
            sudo chmod 666 /var/run/docker.sock
            EOF
}

resource "aws_instance" "load_balancer" {
  ami                    = var.ami
  instance_type          = var.instance_micro
  subnet_id              = var.subnet_1
  vpc_security_group_ids = [var.web_traffic]
  # availability_zone = "eu-west-2a"
  key_name = "Dev"

  user_data = <<-EOF
            #!/bin/bash
            sudo apt update -y
            sudo apt upgrade
            sudo apt install -y curl jq
            curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
            sudo apt install -y nodejs
            sudo apt install -y npm
            curl https://get.docker.com | sudo bash
            version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
            sudo curl -L "https://github.com/docker/compose/releases/download/2.1.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
            sudo chmod +x /usr/bin/docker-compose
            sudo chmod 666 /var/run/docker.sock
            EOF

  # network_interface {
  #   device_index         = 0
  #   network_interface_id = var.web_server_1
  # }

  tags = {
    Name = "Load Balancer"
  }
}







# resource "aws_instance" "jenkins" {
#   ami               = var.ami
#   instance_type     = var.instance_medium
#   availability_zone = "eu-west-2b"
#   # subnet_id     = var.subnet_1
#   key_name  = "Dev"
#   user_data = <<-EOF
#             #!/bin/bash
#             sudo apt update -y
#             sudo apt upgrade
#             sudo apt install -y curl jq
#             curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
#             sudo apt install -y nodejs
#             sudo apt install -y npm
#             curl https://get.docker.com | sudo bash
#             version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
#             sudo curl -L "https://github.com/docker/compose/releases/download/2.1.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
#             sudo chmod +x /usr/bin/docker-compose
#             EOF

#   network_interface {
#     device_index         = 1
#     network_interface_id = var.web_server_2

#   }
#   # for_each          = data.aws_subnet.all_subnets.id[*]
#   tags = {
#     Name = "CI/CD Server"
#   }
# }
