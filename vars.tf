variable "default_tags" {
  type = map(string)
  default = {
    "env" = "thundercats"
  }
  description = "Description for thundercats variable"
}

variable "sg_db_ingress" {

}

variable "sg_db_egress" {

}

variable "db_credentials" {
  type      = map(any)
  sensitive = true
  default = {
    username = "username"
    password = "password"
  }
}