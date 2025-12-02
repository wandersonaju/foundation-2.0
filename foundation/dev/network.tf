module "vpc_dev" {
  source = "../../modules/foundation/vpc"
  project_name = "lablos-network-dev"
  subnet_name = "lablos-subnet-us-east1-dev"
  subnet_cidr = "192.168.0.0/24"
  subnet_region = "us-east1"
  vpc_name = "lablos-vpc-dev"
  network_id = "lablos-vpc-dev"
}