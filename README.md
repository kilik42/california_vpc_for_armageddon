
# Armageddon Project: California VPC Contribution

This repository contains the Terraform configuration files for the **California VPC Module**, a component of the global **Armageddon Project**. This initiative supports the deployment of the **J-Tele-Doctor application** for Tokyo Midtown Medical Center (TMMC), ensuring scalable, secure, and compliant infrastructure in the California region.

---

## Project Overview

The Armageddon Project aims to expand telemedicine services for Japanese and international customers by deploying robust, secure application hosting across global AWS regions. The **California VPC Module** specifically supports the application hosting requirements in the California region, ensuring compliance with project-specific guidelines.

---

## Features of the California VPC Module

### Networking
- **VPC CIDR Block**: `10.106.0.0/16` (65,536 IP addresses for future scalability)
- **Subnets**:
  - Public:
    - `10.106.1.0/24` (AZ 1)
    - `10.106.2.0/24` (AZ 2)
  - Private (Syslog Data & Backend Instances):
    - `10.106.101.0/24` (AZ 1)
    - `10.106.102.0/24` (AZ 2)
- **Internet Gateway**: Provides connectivity for public resources.
- **NAT Gateway**: Secures internet access for private subnets.

### Compute
- **Auto Scaling Group (ASG)**:
  - Minimum: 2 Instances
  - Maximum: 6 Instances
  - Desired: 3 Instances
  - Multi-AZ Deployment for Fault Tolerance
- **EC2 Instances**:
  - Instance Type: `t3.micro` (for test deployment)
  - AMI: Amazon Linux 2
  - Configured for Syslog Integration

### Security
- **Security Groups**:
  - Inbound: Allow HTTP traffic on Port 80.
  - Outbound: Enable required application traffic.
- **Private Subnets**: Isolate syslog data storage.

### Routing
- Public Subnet: Default route to Internet Gateway.
- Private Subnet: Default route to NAT Gateway.

### Outputs
- VPC ID and Subnet IDs
- Load Balancer DNS for Application Access

---

## Deployment Instructions

1. **Initialize Terraform**:
   ```bash
   terraform init
   ```
2. **Plan the Deployment**:
   ```bash
   terraform plan
   ```
3. **Apply the Configuration**:
   ```bash
   terraform apply
   ```
4. **Verify Outputs**:
   - Access the application via the load balancer.
   - Verify resources in the AWS console.

---

## Compliance and Benefits

| **Requirement**                 | **California VPC Contribution**                                 |
|----------------------------------|----------------------------------------------------------------|
| Deploy ASG with a minimum of 2 AZs | Configured ASG spans two AZs with redundancy.                 |
| Deploy at least 1 EC2 for testing  | Includes one `t3.micro` instance for testing.                |
| Transfer syslog data securely      | Isolated syslog data in private subnets, ready for transfer.  |
| Open only Port 80                  | Security groups restrict public access to Port 80.           |
| Store syslog data in private subnets | Ensures compliance with data privacy requirements.         |

---

## Value Proposition

The California VPC Module delivers:
- **Fault Tolerance**: Multi-AZ deployment.
- **Scalability**: Auto Scaling adapts to traffic demands.
- **Security**: Strict compliance with syslog isolation and private subnet usage.

---

## License

This project is licensed under the [MIT License](LICENSE).

