resource "aws_s3_bucket" "session830"{
  bucket = "sessionyarli9952"

  tags = {
    Name = "sessionyarli9952"
	Environment = "Dev"
  }
}