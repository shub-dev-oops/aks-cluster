# Define Input Variables
# 1. Azure Location (CentralUS)
# 2. Azure Resource Group Name 
# 3. Azure AKS Environment Name (Dev, QA, Prod)

# Azure Location
variable "location" {
  type = string
  description = "Azure Region where all these resources will be provisioned"
  default = "Central US"
}

# Azure Resource Group Name
variable "resource_group_name" {
  type = string
  description = "This variable defines the Resource Group"
  default = "prod-aks"
}

# Azure AKS Environment Name
variable "environment" {
  type = string  
  description = "This variable defines the Environment"  
  default = "prod"
}





# AKS Input Variables
# Core AKS

# Define availbility zones
variable "availability_zones" {
  type = list(string)
  description = "This variable defines the Availability Zones"
  default = ["1", "2", "3"]
}

# Enable Auto Scaling
variable "enable_auto_scaling" {
  type = bool
  description = "This variable defines the Auto Scaling"
  default = true
}

# Max Node Count
variable "max_node_count" {
  type = number
  description = "This variable defines the Max Node Count"
  default = 3
}


# Min Node Count
variable "min_node_count" {
  type = number
  description = "This variable defines the Min Node Count"
  default = 1
}


# OS Disk Size in GB
variable "os_disk_size_gb" {
  type = number
  description = "This variable defines the OS Disk Size in GB"
  default = 30
}

# Enable RBAC
variable "enable_rbac" {
  type = bool
  description = "This variable defines the RBAC"
  default = true
}

# Network Plugin 
# Options: azure, kubenet
# Auzre CNI is recommended for production workloads where as kubenet is recommended for dev/test workloads

variable "network_plugin" {
  type = string
  description = "This variable defines the Network Plugin"
  default = "kubenet"
}


# Load Balancer SKU
variable "load_balancer_sku" {
  type = string
  description = "This variable defines the Load Balancer SKU"
  default = "Standard"

# SSH Public Key for Linux VMs
variable "ssh_public_key" {
  #default = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
  description = "This variable defines the SSH Public Key for Linux k8s Worker nodes"  
}


# Linux Admin Username for k8s worker nodes
variable "linux_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Linux admin username k8s Worker nodes"  
}



# Windows Admin Username for k8s worker nodes
variable "windows_admin_username" {
  type = string
  default = "azureuser"
  description = "This variable defines the Windows admin username k8s Worker nodes"  
}

# Windows Admin Password for k8s worker nodes
variable "windows_admin_password" {
  type = string
  default = "P@ssw0rd1234"
  description = "This variable defines the Windows admin password k8s Worker nodes"
  #Please don't keep this here and try to use SSH Public key authentication
    
}
