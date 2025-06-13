// backend.tf
terraform {
  backend "s3" {
    bucket         = "pratapsai123"    # <– replace with your S3 bucket name
    key            = "ec2-example/terraform.tfstate" # <– path inside the bucket
    region         = "us-east-1"
    encrypt        = true                            # SSE-S3; use kms_key_id if you want SSE-KMS
    dynamodb_table = "terraform-lock-nv"         # <– replace with your DynamoDB lock table
  }
}
