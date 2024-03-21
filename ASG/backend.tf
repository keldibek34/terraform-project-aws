terraform {
  backend "s3" {
    bucket = "kabysov"
    key    = "asg_statefile"
    region = "us-east-1"
  }
}