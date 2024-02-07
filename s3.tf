# resource "aws_s3_bucket" "frontend" {
#   bucket = "thundercats-frontend"
# }

# resource "aws_s3_bucket_versioning" "frontend" {
#   bucket = aws_s3_bucket.frontend.id 
#   versioning_configuration { 
#     status = "Disabled"
#     }
# }

# resource "aws_s3_bucket_public_access_block" "frontend" {
#   bucket = aws_s3_bucket.frontend.id 
#   block_public_acls = false 
#   block_public_policy = false
#   ignore_public_acls = false
#   restrict_public_buckets = false
# }