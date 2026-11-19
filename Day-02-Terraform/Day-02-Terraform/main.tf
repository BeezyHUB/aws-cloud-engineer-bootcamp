terraform {
  required_version = ">= 1.5.0"
}
variable "project_name" {
  type    = string
  default = "aws-bootcamp"
}
resource "terraform_data" "practice" {
  input = var.project_name
}
output "project_name" {
  value = terraform_data.practice.output
}