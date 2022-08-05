
terraform {
  backend "s3" {
    bucket = "karandeep.b"
    key    = "first.tfstate"
    region = "ap-south-1"
 dynamodb_table = "for-table"  
  }
}
