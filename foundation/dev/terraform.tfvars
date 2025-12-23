# This file contains the terraform variables for foundation deployment in the development environment.
##########################################
# GCP FOUNDATION - GENERAL CONFIGURATION #
##########################################
organization_id = "789146923162"
billing_account = "01E902-6A4917-C2F0F6"
project_id      = "lablos-development-network"
region          = "us-east1"
#########################
# FOLDERS CONFIGURATION #
#########################
folders = {
  "shared"      = "organizations/789146923162"
  "development" = "organizations/789146923162"
  "network"     = "folders/110628608422"
  "secutiy"     = "folders/110628608422"
}

##########################
# PROJECTS CONFIGURATION #
##########################
projects = [
  {
    project_id = "lablos-development-network"
    folder     = "folders/770744893968"
    enable_api = ["compute.googleapis.com", "orgpolicy.googleapis.com", "serviceusage.googleapis.com"]
  },
  {
    project_id = "lablos-development-app"
    folder     = "folders/935466500178"
    enable_api = ["compute.googleapis.com"]
  }
]

#########################
# ORGANIZATION POLICIES #
#########################
policies = [
  {
    policy_name = "organizations/789146923162/policies/compute.skipDefaultNetworkCreation"
    parent      = "organizations/789146923162"
    enforce     = "TRUE"
  },
  {
    policy_name = "organizations/789146923162/policies/compute.disableSerialPortAccess"
    parent      = "organizations/789146923162"
    enforce     = "TRUE"
  }
]

######################################
# NETWORKS AND SUBNETS CONFIGURATION #
######################################
vpcs = {
  "lablos-vpc-dev" = {
    project_name = "lablos-development-network"
    vpc_name     = "lablos-vpc-dev"
    subnets = {
      "lablos-subnet-us-east1-dev" = {
        subnet_name   = "lablos-subnet-us-east1-dev"
        subnet_cidr   = "172.16.0.0/25"
        subnet_region = "us-east1"
        secondary_ip_ranges = [
          {
            range_name    = "pods"
            ip_cidr_range = "10.0.0.0/24"
          },
          {
            range_name    = "services"
            ip_cidr_range = "10.0.1.0/24"
          }
        ]
      }
    }
  }
  "lablos-vpc-dev-2" = {
    project_name = "lablos-development-network"
    vpc_name     = "lablos-vpc-dev-2"
    subnets = {
      "lablos-subnet-us-central1-dev" = {
        subnet_name   = "lablos-subnet-us-central1-dev"
        subnet_cidr   = "172.30.0.0/25"
        subnet_region = "us-central1"
      }
    }
  }
}

############################
# SHARED VPC CONFIGURATION #
############################
host_project    = "lablos-development-network"
service_project = ["lablos-development-app"]

###########################################
# RESERVED GLOBAL ADDRESSES CONFIGURATION #
###########################################
reserved_global_address = {
  "lablos-vpc-dev" = {
    vpc_name      = "lablos-vpc-dev"
    name          = "ip-psa-lablos-vpc-dev"
    address       = "10.100.0.0"
    prefix_length = 24
    purpose       = "VPC_PEERING"
    address_type  = "INTERNAL"
  }
  "lablos-vpc-dev-2" = {
    vpc_name      = "lablos-vpc-dev"
    name          = "ip-psa-lablos-vpc-dev-2"
    address       = "10.200.0.0"
    prefix_length = 24
    purpose       = "VPC_PEERING"
    address_type  = "INTERNAL"
  }
}

#########################################
# PRIVATE SERVICES ACCESS CONFIGURATION #
#########################################
private_services_access = {
  vpc_name     = "lablos-vpc-dev"        # The vpc to peer with Google services
  address_name = "ip-psa-lablos-vpc-dev" # The name of the reserved global address to use
}

##########################
# FIREWALL CONFIGURATION #
##########################
firewalls = {
  "fw1" = {
    name         = "allow-internal"
    network      = "lablos-vpc-dev"
    source_ranges = ["172.16.0.0/25"]
    target_tags  = ["allow-internal"]
    allowed      = [
      {
        protocol = "tcp"
        ports    = ["80", "8080", "1000-2000"]
      }
    ]
  },
  "fw2" = {
    name         = "allow-ssh"
    network      = "lablos-vpc-dev"
    source_ranges = ["172.16.0.0/25"]
    target_tags  = ["allow-ssh"]
    allowed      = [
      {
        protocol = "tcp"
        ports    = ["22"]
      }
    ]
  }
}

#############
# CLOUD NAT #
#############
# cloud_nat = {
#   "nat-us-east1" = {
#     name               = "nat-us-east1"
#     region             = "us-east1"
#     network            = "lablos-vpc-dev"
#   },
#   "nat-us-central1" = {
#     name               = "nat-us-central1"
#     region             = "us-central1"
#     network            = "lablos-vpc-dev-2"
#   }
# }