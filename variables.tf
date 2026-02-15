variable "aws_region" {
  description = "Region receiving resources"
  type        = string
  default     = "us-west-2"
}

variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = null # Setting to null allows locals to handle the fallback
}

variable "retention_days" {
	description = "how many days before lifecycle rules can delete versions of the files"
	type = number
	default = 30
}

variable "version_limit" {
	description = "number of version to keep, after they are older than the retention days"
	type = number
	default = 100
}
