# aws_customer_gateway

Provides a customer gateway inside a VPC. These objects can be connected to VPN gateways via VPN connections, and allow you to establish tunnels between your network and the VPC.

## input variables

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
|account_id|The id of AWS account.|string||Yes|
|region|This is the AWS region.|string|us-east-1|Yes|
|customer_gateway_bgp_asn|The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).|number|65000|No|
|customer_gateway_ip_address|The IP address of the gateway's Internet-routable external interface.|string||Yes|
|customer_gateway_type|The type of customer gateway. The only type AWS supports at this time is ipsec.1.|string|ipsec.1|No|
|custom_tags|Custom tags.|map||No|
|default_tags|Default tags.|map|{"ThubName"= "{{ name }}","ThubCode"= "{{ code }}","ThubEnv"= "default","Description" = "Managed by TerraHub"}|No|

## output parameters

| Name | Description | Type |
|------|-------------|:----:|
|id|The amazon-assigned ID of the gateway.|string|
|thub_id|The amazon-assigned ID of the gateway (hotfix for issue hashicorp/terraform#[7982]).|string|
|bgp_asn|The gateway's Border Gateway Protocol (BGP) Autonomous System Number (ASN).|string|
|ip_address|The IP address of the gateway's Internet-routable external interface.|string|
|type|The type of customer gateway.|string|
|tags|Tags applied to the gateway.|map|