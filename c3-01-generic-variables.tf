# Input Variables - Placeholder file
# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"  
}
# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "SAP"
}

# variable "bucket_remote_state" {
#   description = "bucket name of eks cluster that saves the remote state"
#   type = string
#   default = "terraform-on-aws-eks-nim"
# }

# variable "key_remote_state" {
#   description = "The path to the state file inside the bucket"
#   type = string
#   default = "dev/eks-cluster/terraform.tfstate"
# }

# variable "eks_cluster_name" {
#   description = "EKS cluster name"
#   type = string
#   default = ""
# }

variable "eks_cluster_name" {
  description = "EKS cluster Name/data.terraform_remote_state.eks.outputs.cluster_name"
  type = string
  default = ""
}

variable "aws_iam_openid_connect_provider_arn" {
  description = "The ARN assigned by AWS for this provider/data.terraform_remote_state.eks.outputs.aws_iam_openid_connect_provider_arn"
  type = string
  default = ""
}

# variable "aws_iam_openid_connect_provider_extract_from_arn" {
#   description = "data.terraform_remote_state.eks.outputs.aws_iam_openid_connect_provider_extract_from_arn"
#   type = string
#   default = ""
# }

variable "eks_cluster_endpoint" {
  description = "The hostname (in form of URI) of Kubernetes master/data.terraform_remote_state.eks.outputs.cluster_endpoint"
  type = string
  default = ""
}

variable "eks_cluster_certificate_authority_data" {
  description = "PEM-encoded root certificates bundle for TLS authentication./data.terraform_remote_state.eks.outputs.cluster_certificate_authority_data"
  type = string
  default = ""
}

# Flag to control whether the StorageClass should be created
variable "create_ebs_storage_class" {
  description = "Flag to control if the EBS StorageClass should be created."
  type        = bool
  default     = false
}

# Reclaim policy for the storage class (Retain or Delete)
variable "ebs_reclaim_policy" {
  description = "Reclaim policy for the StorageClass (Retain or Delete)."
  type        = string
  default     = "Delete"  # Can be set to "Retain" or "Delete"
}




