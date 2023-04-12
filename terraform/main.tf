resource "aws_s3_bucket_website_configuration" "static_site" {
  bucket = aws_s3_bucket.bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
    acl    = "public-read"
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.bucket.id
  key    = "index.html"
  source = "../src/index.html"
  acl    = "public-read"
  content_type = "text/html"

}
