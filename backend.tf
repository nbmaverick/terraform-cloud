# s3 bucket for backend
resource "aws_s3_bucket" "backend" {
  bucket = "bucket-for-s3backendmaverick"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# create DynamoDB 

resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name         = "state-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }
}
