# # Security
# module "db_sg" {
#   source = "./modules/dynamo-db"
#   sg_name = "${var.default_tags.env}-dbsg"
#   description = "project 3 db security group" 
#   sg_db_ingress = var.sg_db_ingress
#   sg_db_egress = var.sg_db_egress
#   sg_source = var.sg_source
# }

resource "aws_dynamodb_table" "cars" {
  name           = "cars"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
