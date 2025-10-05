module "dev-infra" {
  source = "./modules"
  
  env            = "dev"
  instance_type  = "t2.micro"
  instance_count = 2
  ami            = "ami-0d64bb532e0502c46" #Ubuntu Server 20.04 LTS (HVM), SSD Volume Type - ami-0c55b159cbfafe1f0 (us-east-1)
  volume_size    = 10
}

module "stg-infra" {
  source = "./modules"
  
  env            = "stg"
  instance_type  = "t2.small"
  instance_count = 2
  ami            = "ami-0d64bb532e0502c46" #Ubuntu Server 20.04 LTS (HVM), SSD Volume Type - ami-0c55b159cbfafe1f0 (us-east-1)
  volume_size    = 10
}

module "prd-infra" {
  source = "./modules"
  
  env            = "prd"
  instance_type  = "t2.medium"
  instance_count = 3
  ami            = "ami-0d64bb532e0502c46" #Ubuntu Server 20.04 LTS (HVM), SSD Volume Type - ami-0c55b159cbfafe1f0 (us-east-1)
  volume_size    = 10
}

output "dev_infra_ec2_public_ips" {
  value = module.dev-infra.ec2_public_ip
}


output "stg_infra_ec2_public_ips" {
  value = module.stg-infra.ec2_public_ip
}


output "prd_infra_ec2_public_ips" {
  value = module.prd-infra.ec2_public_ip
}