resource "aws_lb_target_group" "Hong-Kong_tg" {
  name     = "Hong-Kong-target-group"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.Hong-Kong_VPC.id
  target_type = "instance"

  health_check {
    enabled             = true
    interval            = 30
    path                = "/"
    protocol            = "HTTP"
    healthy_threshold   = 5
    unhealthy_threshold = 2
    timeout             = 5
    matcher             = "200"
  }

  tags = {
    Name    = "Hong-Kong_VPCTargetGroup"
    Service = "Hong-Kong_VPC"
    Owner   = "User"
    Project = "Web Service"
  }
}
