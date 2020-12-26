###Variables Beginning####

variable "a-aws_region_v" {
  description = "Choose The Region (case sensitive, exclude extra space): us-east-1 us-east-2 us-west-1 us-west-2 ap-east-1 ap-south-1 ap-northeast-2 ap-southeast-1 ap-southeast-2 ap-northeast-1 ca-central-1 eu-central-1 eu-west-1 eu-west-2 eu-west-3 eu-north-1 me-south-1 sa-east-1"
}

variable "a-license" {
  description = "Choose the license capacity (case sensitive, exclude extra space): VM-300 VM-500 VM-700"
}

variable "a-mypublicipmask" {
  description = "Access ipchicken.com to have the public IP of your machine, Enter it with /32 mask - Example: 1.1.1.1/32"
}

variable "b-firewallname01" {
  description = "Enter the name of the AWS VM-firewall - Example: hshah-fw01"
}

variable "c-firewallname02" {
  description = "Enter the name of the AWS VM-firewall - Example: hshah-fw02"
}

variable "d-vpcname" {
  description = "Enter the name of the AWS VPC - Example: hshah-vpc"
}

variable "e-mgmtsubname" {
  description = "Enter the name of the AWS managment subnet for the VPC - Example: hshah-mgmt-sub"
}

variable "f-untrustsubname" {
  description = "Enter the name of the AWS untrust subnet for the VPC - Example: hshah-untrust-sub"
}

variable "g-trustsubname" {
  description = "Enter the name of the AWS trust subnet for the VPC - Example: hshah-trust-sub"
}

variable "h-hasubname" {
  description = "Enter the name of the AWS high-availability subnet for the VPC - Example: hshah-ha-sub"
}

variable "i-webservname" {
  description = "Enter the name of the AWS VM-web-server - Example: hshah-web-server"
}

variable "j-securitygroup" {
  description = "Enter the name of the security-group for the interfaces - Example: hshah-sg"
}

variable "amiid" {
  default = {
    us-east-2 = "ami-02c6d339c392dfc21"
    us-east-1 = "ami-02ce45528ed979c5a"
    us-west-1 = "ami-071ed5cf4ee28bb09"
    us-west-2 = "ami-09caf56db45f96bca"
    ca-central-1 = "ami-02af1381407357bff"
    eu-central-1 = "ami-0cae9f6d33310a7ae"
    eu-west-1 = "ami-0aa01c8bf489d4d1f"
    eu-west-2 = "ami-0a54e9baadee7dab6"
    eu-west-3 = "ami-0011d3852fed66e20"
    eu-north-1 = "ami-06c527d34dfc82958"
    ap-east-1 = "ami-03c101d3391c270ae"
    ap-south-1 = "ami-042e1f240c7ee1a51"
    ap-northeast-2 = "ami-0dd8a06294e44bb85"
    ap-southeast-1 = "ami-0df8e312c0c67e5ed"
    ap-southeast-2 = "ami-0e00404f78ee28628"
    ap-northeast-1 = "ami-0090db3990015f856"
    me-south-1 = "ami-063de8957efd62228"
    sa-east-1 = "ami-0050bf8f5d40f2bf5"
  }
}

variable "pano_amiid" {
  default = {
    us-east-2 =	"ami-0edafd228206b4778"
    us-east-1 =	"ami-0858c5416dca90b17"
    us-west-1 =	"ami-0f84ff63bddcbcc54"
    us-west-2 =	"ami-0ab60b37b6151178a"
    ap-east-1 =	"ami-014bf184fd3a0d2ce"
    ap-south-1 = "ami-06783fcc73e33ac89"
    ap-northeast-2 = "ami-04d3a368ef44f6709"
    ap-southeast-1 = "ami-05826cb758fb46aa2"
    ap-southeast-2 = "ami-01747e06ceac9887e"
    ap-northeast-1 = "ami-0cede9676b40fc3df"
    ca-central-1 = "ami-02ea202ac87d7020f"
    eu-central-1 = "ami-06966d409531a3eda"
    eu-west-1 = "ami-0e4d013715085fb99"
    eu-west-2 = "ami-0d0b2bf86a9fa1999"
    eu-west-3 = "ami-0a2c99643c3cb9b97"
    eu-north-1 = "ami-02396be449470d625"
    me-south-1 = "ami-024df6bf6915cc26f"
    sa-east-1 = "ami-03e53dcf147ecb997"
  }
}

variable "web_amiid" {
  default = {
  us-east-2 = "ami-05eaf0a127fdc9011"
  us-east-1 = "ami-0077240ab26e235e5"
  us-west-1 = "ami-01fdd34f40bd2aa03"
  us-west-2 = "ami-08d60438cbb6213b1"
  ap-east-1 = "ami-0b63f3eae802254c9"
  ap-south-1	= "ami-0fe34bc9ca37eacd8"
  ap-northeast-2 = "ami-05f14de06018a08f8"
  ap-southeast-1 = "ami-01bf06117ce9414bf"
  ap-southeast-2 = "ami-0011fd0a4bc3c9e9f"
  ap-northeast-1 = "ami-03193823f0f61fa22"
  ca-central-1 = "ami-0de4778d29368e029"
  eu-central-1 = "ami-07013c3e91894a5c9"
  eu-west-1 = "ami-0c7c8d76fada3d4e8"
  eu-west-2 = "ami-005ff9669277f44f1"
  eu-west-3 = "ami-0de2a62a8b0b52399"
  eu-north-1 = "ami-0a3581087856f7101"
  me-south-1 = "ami-0ab817ae24abd95cc"
  sa-east-1 = "ami-029ce20d6769a59b6"
  }
}

variable "aws_vpc_v" {
  default = "10.10.0.0/16"
}

variable "aws_mgmt_sub" {
  default = "10.10.10.0/24"
}

variable "aws_untrust_sub" {
  default = "10.10.11.0/24"
}

variable "aws_trust_sub" {
  default = "10.10.12.0/24"
}

variable "aws_ha_sub" {
  default = "10.10.13.0/24"
}

variable "aws_mgmt_ip1" {
  default = "10.10.10.4"
}

variable "aws_mgmt_ip2" {
  default = "10.10.10.5"
}

variable "aws_mgmt_pano" {
  default = "10.10.10.6"
}

variable "aws_untrust_ip1" {
  default = "10.10.11.4"
}

variable "aws_trust_ip1" {
  default = "10.10.12.4"
}

variable "aws_web_server" {
  default = "10.10.12.40"
}

variable "aws_ha_ip1" {
  default = "10.10.13.4"
}

variable "aws_ha_ip2" {
  default = "10.10.13.5"
}

provider "aws" {
  region = var.a-aws_region_v
}

variable "bucket" {
  description = "Enter VM-300 VM-500 VM-700"
  default = {
    VM-300="vmseries-bootstrap-aws-s3bucket=hshah20"
    VM-500="vmseries-bootstrap-aws-s3bucket=hshah20-500"
    VM-700="vmseries-bootstrap-aws-s3bucket=hshah20-700"
  }
}

variable "instance" {
  description = "Enter VM-300 VM-500 VM-700"
  default = {
    VM-300="m4.xlarge"
    VM-500="m5.2xlarge"
    VM-700="m5.4xlarge"
  }
}

variable "bucket2" {
  description = "Enter VM-300 VM-500 VM-700"
  default = {
    VM-300="vmseries-bootstrap-aws-s3bucket=hshah21"
    VM-500="vmseries-bootstrap-aws-s3bucket=hshah21-500"
    VM-700="vmseries-bootstrap-aws-s3bucket=hshah21-700"
  }
}

###Variables End####

resource "aws_vpc" "awsha_fw1-vpc" {
  cidr_block = var.aws_vpc_v
  tags = {
    Name = var.d-vpcname
  }
}

data "aws_availability_zones" "available" {
}

resource "aws_subnet" "Management" {
  cidr_block        = var.aws_mgmt_sub
  availability_zone = data.aws_availability_zones.available.names[0]
  vpc_id            = aws_vpc.awsha_fw1-vpc.id
  tags = {
    Name = var.e-mgmtsubname
  }
}

resource "aws_subnet" "Untrust" {
  cidr_block        = var.aws_untrust_sub
  availability_zone = data.aws_availability_zones.available.names[0]
  vpc_id            = aws_vpc.awsha_fw1-vpc.id
  tags = {
    Name = var.f-untrustsubname
  }
}

resource "aws_subnet" "Trust" {
  cidr_block        = var.aws_trust_sub
  availability_zone = data.aws_availability_zones.available.names[0]
  vpc_id            = aws_vpc.awsha_fw1-vpc.id
  tags = {
    Name = var.g-trustsubname
  }
}

resource "aws_subnet" "HA" {
  cidr_block        = var.aws_ha_sub
  availability_zone = data.aws_availability_zones.available.names[0]
  vpc_id            = aws_vpc.awsha_fw1-vpc.id
  tags = {
    Name = var.h-hasubname
  }
}

resource "aws_internet_gateway" "default" {
  vpc_id = aws_vpc.awsha_fw1-vpc.id
}

resource "aws_route_table" "Management_route" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }
  tags = {
    Name = "ManagementRoute_route"
  }
  vpc_id = aws_vpc.awsha_fw1-vpc.id
}

resource "aws_route_table" "Untrust_route" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }
  tags = {
    Name = "Untrust_route"
  }
  vpc_id = aws_vpc.awsha_fw1-vpc.id
}

resource "aws_route_table_association" "Management_Subnet_Asso" {
  subnet_id      = aws_subnet.Management.id
  route_table_id = aws_route_table.Management_route.id
}

resource "aws_route_table_association" "Untrust_Subnet_Asso" {
  subnet_id      = aws_subnet.Untrust.id
  route_table_id = aws_route_table.Untrust_route.id
}

resource "aws_security_group" "test" {
  name = var.j-securitygroup
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.aws_vpc_v]
  }

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.a-mypublicipmask]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = aws_vpc.awsha_fw1-vpc.id
}


resource "aws_instance" "awsha_fw1" {
  ami                  = var.amiid[var.a-aws_region_v]
  instance_type        = var.instance[var.a-license]
  user_data            = var.bucket[var.a-license]
  subnet_id            = aws_subnet.Management.id
  private_ip           = var.aws_mgmt_ip1
  iam_instance_profile = "tac_ha_and_s3"
  security_groups      = [aws_security_group.test.id]
  tags = {
    Name = var.b-firewallname01
  }
  key_name = "awsauto"
}

resource "aws_eip" "fw1mgmtpublic" {
  vpc      = true
  instance = aws_instance.awsha_fw1.id

  tags = {
    Name = "fw1mgmt public"
  }
}

resource "aws_network_interface" "HA" {
  subnet_id       = aws_subnet.HA.id
  private_ips     = [var.aws_ha_ip1]
  security_groups = [aws_security_group.test.id]

  attachment {
    device_index = 1
    instance     = aws_instance.awsha_fw1.id
  }
 depends_on = [aws_instance.awsha_fw1,aws_eip.fw1mgmtpublic]
}

resource "aws_network_interface" "Untrust" {
  subnet_id       = aws_subnet.Untrust.id
  private_ips     = [var.aws_untrust_ip1]
  security_groups = [aws_security_group.test.id]
  attachment {
    device_index = 2
    instance     = aws_instance.awsha_fw1.id
  }
  depends_on = [aws_instance.awsha_fw1,aws_eip.fw1mgmtpublic,aws_network_interface.HA]
}

resource "aws_eip" "fw1untrustpub" {
  vpc               = true
  network_interface = aws_network_interface.Untrust.id
  tags = {
    Name = "fw1 untrust public"
  }
}

resource "aws_route_table" "Trust_route" {
  route {
    cidr_block           = "0.0.0.0/0"
    network_interface_id = aws_network_interface.Trust.id
  }

  tags = {
    Name = "Trust_route"
  }
  vpc_id = aws_vpc.awsha_fw1-vpc.id
}

resource "aws_route_table_association" "Trust_Subnet_Asso" {
  subnet_id      = aws_subnet.Trust.id
  route_table_id = aws_route_table.Trust_route.id
}

resource "aws_network_interface" "Trust" {
  subnet_id         = aws_subnet.Trust.id
  private_ips       = [var.aws_trust_ip1]
  security_groups   = [aws_security_group.test.id]
  source_dest_check = false
  attachment {
    device_index = 3
    instance     = aws_instance.awsha_fw1.id
  }
  depends_on = [aws_instance.awsha_fw1,aws_eip.fw1mgmtpublic,aws_network_interface.Untrust,aws_network_interface.HA]
}

resource "aws_instance" "awsha_fw2" {
  ami                  = var.amiid[var.a-aws_region_v]
  instance_type        = var.instance[var.a-license]
  user_data            = var.bucket2[var.a-license]
  subnet_id            = aws_subnet.Management.id
  private_ip           = var.aws_mgmt_ip2
  iam_instance_profile = "tac_ha_and_s3"
  security_groups      = [aws_security_group.test.id]
  tags = {
    Name = var.c-firewallname02
  }
  key_name = "awsauto"
}

resource "aws_eip" "fw2mgmtpublic" {
  vpc      = true
  instance = aws_instance.awsha_fw2.id

  tags = {
    Name = "fw2 mgmt public2"
  }
}

resource "aws_network_interface" "HA2" {
  subnet_id       = aws_subnet.HA.id
  private_ips     = [var.aws_ha_ip2]
  security_groups = [aws_security_group.test.id]
  attachment {
    device_index = 1
    instance     = aws_instance.awsha_fw2.id
  }
  depends_on = [aws_instance.awsha_fw2,aws_eip.fw2mgmtpublic]
}

resource "aws_instance" "awsha_webserver" {
  ami             = var.web_amiid[var.a-aws_region_v]
  instance_type   = "m4.xlarge"
  subnet_id       = aws_subnet.Trust.id
  private_ip      = var.aws_web_server
  user_data       = "sudo systemctl start httpd"
  security_groups = [aws_security_group.test.id]
  tags = {
   Name = var.i-webservname
  }
  key_name = "awsauto"
}

