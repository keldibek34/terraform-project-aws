terraform {
  backend "s3" {
    bucket = "kabysov"
    key    = "vpc-statefile"
    region = "us-east-1"
  }
}
