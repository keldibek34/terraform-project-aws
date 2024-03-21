terraform {
  backend "s3" {
    bucket = "kabysov"
    key    = "rds_statefile"
    region = "us-east-1"
  }
}
