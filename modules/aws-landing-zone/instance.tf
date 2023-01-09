resource "aws_instance" "jenkins-server" {
  count                        = 1
  ami                          = var.ami
  instance_type                = var.instance_type
  subnet_id                    = aws_subnet.public_subnet[0].id
  associate_public_ip_address  = true
  key_name                     = var.key_name
  user_data                    = var.user_data != "" ? var.user_data : templatefile("${path.module}/user_data.sh", {})
  vpc_security_group_ids = [
    aws_security_group.jenkins-sg.id
  ]
  root_block_device {
    delete_on_termination = true
    iops = 3000
    volume_size = 30
    volume_type = "gp3"
  }
  tags = {
    Name ="JENKINS-server"
    Environment = "JENKINS"
    OS = "REDHAT"
  }

  depends_on = [ aws_security_group.jenkins-sg ]
}