resource "aws_s3_bucket" "my_s3_bucket" {
  bucket = var.bucket_name
}
resource "aws_s3_bucket_server_side_encryption_configuration" "my_s3_bucket_sse" {
  bucket = aws_s3_bucket.my_s3_bucket.bucket
  rule {
     apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }  
}

resource "aws_s3_bucket_versioning" "s3_backend_versioning" {
  bucket = aws_s3_bucket.my_s3_bucket.bucket
  versioning_configuration {
    status = "Enabled"
  }
}
