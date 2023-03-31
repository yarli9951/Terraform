resource "aws_instance" "dev" {

  ami = "${var.ami}"

  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.public.id}"
  #iam_instance_profile = "${aws_iam_instance_profile.vamsi1_profile.name}"

  tags = {
    Name = "dev1"
  }
}


resource "aws_instance" "QA" {

  ami = "${var.ami}"

  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.public.id}"
  #iam_instance_profile = "${aws_iam_instance_profile.vamsi1_profile.name}"

  tags = {
    Name = "QA"
  }
}

resource "aws_instance" "uat" {

  ami = "${var.ami}"

  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.public.id}"
  #iam_instance_profile = "${aws_iam_instance_profile.vamsi1_profile.name}"

  tags = {
    Name = "uat"
  }
}
