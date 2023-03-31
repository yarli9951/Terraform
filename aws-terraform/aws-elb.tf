resource "aws_elb" "dev" {
  name = "dev"
  #availability_zones = "us-east-2a"
  subnets = ["${aws_subnet.public.id}"]



  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  #listener {
  #  instance_port     = 8000
  #  instance_protocol = "http"
  #  lb_port           = 443
  #  lb_protocol       = "https"
  #ssl_certificate_id = "arn:aws:iam::123456789012:server-certificate/certName"
  #}

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  instances                   = ["${aws_instance.dev.id}", "${aws_instance.QA.id}", "${aws_instance.uat.id}"]
  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "dev"
  }
}
