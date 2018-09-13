# aws_rds_cluster_parameter_group

Provides an RDS DB cluster parameter group resource. Documentation of the available parameters for various Aurora engines can be found at: * Aurora MySQL Parameters * Aurora PostgreSQL Parameters

## input variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|account_id|The id of AWS account.|string||Yes|
|region|This is the AWS region.|string|us-east-1|Yes|
|rds_cluster_parameter_group_name|The name of the DB cluster parameter group. If omitted, Terraform will assign a random, unique name.|string|{{ name }}|No|
|rds_cluster_parameter_group_family|The family of the DB cluster parameter group.|string|aurora5.6|No|
|rds_cluster_parameter_group_description|The description of the DB cluster parameter group.|string|Managed by TerraHub|No|
|rds_cluster_parameter_group_parameter_name|The name of the DB parameter.|string|character_set_server|No|
|rds_cluster_parameter_group_parameter_value|The value of the DB parameter.|string|utf8|No|
|rds_cluster_parameter_group_parameter_apply_method|Some engines can't apply some parameters without a reboot.|string|immediate|No|
|custom_tags|Custom tags.|map||No|
|default_tags|Default tags.|map|{"ThubName"= "{{ name }}","ThubCode"= "{{ code }}","ThubEnv"= "default","Description" = "Managed by TerraHub"}|No|

## output parameters

| Name | Description | Type |
|------|-------------|:----:|
|id|The db cluster parameter group name.|string|
|thub_id|The db cluster parameter group name (hotfix for issue hashicorp/terraform#[7982]).|string|
|arn|The ARN of the db cluster parameter group.|string|