terraform {
	# 1.10 using s3 without dynamo requires s3 native locking
	required_version = ">= 1.10"

	required_providers {
		aws = {
			source = "hashicorp/aws"
			# major version change can have breaking changes
			version = "~> 6.0" # 5 will work, newer versions add features
	  }
  }
}
