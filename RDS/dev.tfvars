region ="us-east-1"

engine              = "aurora-mysql"
engine_version      = "5.7.mysql_aurora.2.11.1"
instance_class      = "db.t3.small"
database_name       = "wordpressdb"
master_username     = "dbuser"
master_password     = "dbuserpass"
number_of_instances = 3
domain_name         = "ysakova.com"
zone_id             = "Z03752632UEAH78FQT19U"
tags = {

  Name      = "Terraform-project"
  createdBy = "Team-1"
}