# Define list of variables to be used in main.tf

############
# provider #
############
variable "account_id" {
  description = "Allowed AWS account ID, to prevent you from mistakenly using an incorrect one (and potentially end up destroying a live environment)."
}

variable "region" {
  description = "This is the AWS region."
}

#############
# top level #
#############
variable "ami_launch_permission_image_id" {
  description = "A region-unique name for the AMI."
}

variable "ami_launch_permission_account_id" {
  description = "An AWS Account ID to add launch permissions."
}