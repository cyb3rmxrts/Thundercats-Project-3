# variable "default_tags" {
#   type = map(string)
#   default = {
#     "env" = "thundercats"
#   }
#   description = "Description for thundercats variable"
# }

# variable "sg_db_ingress" {
#   type = map(object({
#     port     = number
#     protocol = string
#     self     = bool
#   }))
#   description = "map of ingress rules"
# }

# variable "sg_db_egress" {
#   type = map(object({
#     port     = number
#     protocol = string
#     self     = bool
#   }))
#   description = "map of egress rules"
# }

# variable "db_credentials" {
#   type      = map(any)
#   sensitive = true
#   default = {
#     username = "username"
#     password = "password"
#   }
# }