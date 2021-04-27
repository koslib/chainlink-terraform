# chainlink-terraform-ecs
Terraform module which can be used to deploy a basic serverless Chainlink node. This repository should help you to set up the basics of the infrastructure you'll need in order to run a Chainlink node on AWS, utilizing ECS. 

There are several ways to deploy a serverless application on ECS, one of them is by using [Docker for ECS](https://docs.docker.com/cloud/ecs-integration/). You can also use the [chainlink-docker-compose](https://github.com/koslib/chainlink-docker-compose) repo as a starting point.


# Variables

It is recommended to add your variables in a `terraform.tfvars` file so that it's loaded automatically once you run `terraform plan/apply`.

| Variable name | Type | Default | Required |
| ----------- | ----------- | ----------- | ----------- |
| `aws_region` | `string` | `us-east-1` | no |
| `aws_profile` | `string` | NA | yes |
| `project_name` | `string` | NA | yes |
| `pg_version` | `string` | `13.1` | no |
| `rds_db_name` | `string` | NA | yes |
| `rds_instance_identifier` | `string` | NA | yes |
| `rds_master_password` | `string` | NA | yes |
| `rds_master_username` | `string` | NA | yes |
| `rds_multi_az` | `bool` | `false` | no |
| `rds_instance_class` | `string` | `db.t3.micro` | no |
| `log_retention` | `string` | `7` | no |

# Outputs

| Output name | Description |
| ----------- | ----------- |
| `rds_hostname` | The RDS hostname provisioned - useful to add in db secrets later on. |
| `vpc_id` | The VPC ID |
| `alb_dns` | The provisioned ALB DNS name|

# Disclaimer

This is not spinning up a complete Chainlink node. Instead, this project should help you deploy the basic infrastructure which you will need in order to deploy a scalable and highly-available (HA) Chainlink node. This shall not be used in production environments without prior consideration of the risks involved, as well as security enhancements (eg. running everything in private subnets instead of public ones).

# Contributions

The community is welcome to send in any ideas (open an issue or PR for that) or improvements (via a PR)! :) 