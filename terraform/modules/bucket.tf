resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.env}-aman-practice-bucket"

  tags = {
    Name        = "${var.env}-aman-practice-bucket"
    Environment = var.env
  }
}