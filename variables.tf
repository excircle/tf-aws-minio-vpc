variable "createdby_tag" {
    description = "The value for the 'CreatedBy' tag"
    type        = string
}

variable "owner_tag" {
    description = "The value for the 'Owner' tag"
    type        = string
}

variable "purpose_tag" {
    description = "The value for the 'Purpose' tag"
    type        = string
}

variable "hosts" {
  description = "Number of hosts to create"
  type = number
  default = 2
}

variable "application_name" {
  description = "Application Name"
  type = string
}

variable "az_count" {
  description = "Number of Availability Zones - number provided traverses available zones - Example: 2 provide (us-west-2{a,b})"
  type = number
  default = 2
}

variable "make_private" {
  description = "Make the cluster private"
  type = bool
  default = false
}