module "payroll" {
  source = "../modules/payroll"
  app_region = "ca-central-1"
  ami = "ami-05d4121edd74a9f06"
}