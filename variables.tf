variable "master_ips" {
  description = "Ips of the k8 masters"
  type = list(string)
}

variable "worker_ips" {
  description = "Ips of the k8 workers"
  type = list(string)
}


variable "load_balancer_external_ip" {
  description = "External ip of the load balancer"
  type = string
}

variable "bastion_external_ip" {
  description = "External ip of the bastion"
  type = string
}

variable "bastion_port" {
  description = "Ssh port the bastion uses"
  type = number
  default = 22
}

variable "bastion_user" {
  description = "User to ssh on the bastion as"
  type = string
  default = "ubuntu"
}

variable "k8_cluster_user" {
  description = "User to ssh on k8 machines as"
  type = string
  default = "ubuntu"
}

variable "bastion_key_pair" {
  description = "SSh key pair"
  type = any
}

variable "provisioning_path" {
  description = "Directory to put kubernetes provisioning files in. This directory will be deleted after the installation."
  type = string
}

variable "artifacts_path" {
  description = "Directory where to put post-installation admin.conf file and kubectl binary"
  type = string
}

variable "cloud_init_sync_path" {
  description = "Directory to put cloud-init synchronization ansible files in"
  type = string
}

variable "certificates_path" {
  description = "Directory to upload pre-generated private keys and certificates in"
  type = string
}

variable "bastion_dependent_ip" {
  description = "Internal ip of the bastion. Required only to set a provisioning dependency on the bastion. Not used otherwise."
  type = string
}

variable "wait_on_ips" {
    description = "Ips of extra vms (beyond the workers, masters and bastion) that the provisioner wait on for cloud-init. If your api load balancer is a vm, you should put it there."
    type = any
}

variable "revision" {
  description = "Internal version of the module to force reprovisioning on changes. Should usually be left to default value to reprovision with incremental versions."
  type = string
  default = "1.1.0"
}

variable "k8_ingress_http_port" {
  description = "Port that will be taken up on all kubernetes workers for ingress http traffic"
  type = number
  default = 30000
}

variable "k8_ingress_https_port" {
  description = "Port that will be taken up on all kubernetes workers for ingress https traffic"
  type = number
  default = 30001
}

variable "k8_cluster_name" {
  description = "Name of the k8 cluster in the configuration"
  type = string
  default = "cluster.local"
}

variable "k8_version" {
  description = "Kubernetes version to install"
  type = string
  default = "v1.19.3"
}

variable "ca_certificate" {
  description = "Ca certificate in pem format"
  type = string
  default = ""
}

variable "ca_private_key" {
  description = "Ca private key"
  type = string
  default = ""
}

variable "etcd_ca_certificate" {
  description = "Etcd ca certificate in pem format"
  type = string
  default = ""
}

variable "etcd_ca_private_key" {
  description = "Etcd private key"
  type = string
  default = ""
}

variable "front_proxy_ca_certificate" {
  description = "Front proxy ca certificate in pem format"
  type = string
  default = ""
}

variable "front_proxy_ca_private_key" {
  description = "Front proxy private key"
  type = string
  default = ""
}