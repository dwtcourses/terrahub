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
variable "db_event_subscription_name" {
  description = "The name of the DB event subscription. By default generated by Terraform."
}

variable "db_event_subscription_sns_topic" {
  description = "The SNS topic to send events to."
}

variable "db_event_subscription_source_ids" {
  type        = "list"
  description = "A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a source_type must also be specified."
}

variable "db_event_subscription_source_type" {
  description = "The type of source that will be generating the events. Valid options are db-instance, db-security-group, db-parameter-group, db-snapshot, db-cluster or db-cluster-snapshot."
}

variable "db_event_subscription_event_categories" {
  type        = "list"
  description = "A list of event categories for a SourceType that you want to subscribe to."
}

variable "db_event_subscription_enabled" {
  description = "A boolean flag to enable/disable the subscription."
}

########
# tags #
########
variable "custom_tags" {
  type        = "map"
  description = "Custom tags"
  default     = {}
}

variable "default_tags" {
  type        = "map"
  description = "Default tags"
  default     = {}
}