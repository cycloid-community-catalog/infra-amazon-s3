variable "env" {}

variable "project" {
  default = "s3"
}

variable "bucket_name" {}

variable "bucket_acl" {
  default = "private"
}

variable "versioning_enabled" {
  default = false
}
