Day 06 — AWS Class 1

1. Cloud 
- Public Cloud: Cloud services provided to multiple customers.
- Private Cloud: Infrastructure dedicated to one org.
- Hybrid Cloud: Combination of public and private infrastructure.

Service Models
- IaaS: Rent infrastructure — EC2.
- PaaS: Managed application platform — Elastic Beanstalk.
- SaaS: Ready-to-use software.

2. AWS Global Infrastructure

- Region: Geographical AWS location.
- Availability Zone (AZ): Isolated location within a Region.
- Edge Location: Delivers cached content closer to users.

3. AWS Governance

- Organizations: Centrally manages multiple AWS accounts.
- Operational Units:(OU) Groups accounts within an Organization.
- SCP(security control policy): Sets maximum permissions; does not grant permissions.
- Control Tower: Sets up and governs multi-account environments.
- Guardrails: Preventive, detective and proactive controls.
- AWS Config: Tracks resource configurations and compliance.(like a watch dog)
- CloudTrail: Records API activity — who did what and when.


4. IAM — Identity and Access Management

- Authentication: Who are you?
- Authorization: What can you do?
- User: Individual AWS identity.
- Group: Collection of IAM users.
- Role: trusted identity providing temporary credentials.
- MFA(multi factor auth): Additional authentication factor.
- STS(security token service): Issues temporary security credentials.
- ARN(amazon resource name): Unique identifier for an AWS resource.

IAM Policy Structure

```json
{
  "Effect": "Allow",(allow/deny)
  "Action": "s3:GetObject",(what exactly is it doing)
  "Resource": "arn:aws:s3:::company-data/*"
}



Role policies:
Trust policy = Who can assume the role?
Permissions policy = What can the role do?
5. EC2 — Elastic Compute Cloud
EC2 provides virtual servers.
Launch Configuration
AMI: Operating system and machine image.
Instance Type: CPU and RAM capacity.
Key Pair: SSH authentication.
Security Group: Virtual firewall.
EBS: Persistent block storage.
VPC/Subnet: Network placement.
IAM Role: AWS permissions for applications.
Pricing Options
On-Demand: Pay for usage.
Savings Plans / Reserved Instances: Commitment-based discounts.
Spot: Cheap spare capacity; can be interrupted.
Custom AMI
A reusable image of a configured EC2 instance.
6. VPC — Virtual Private Cloud
An isolated AWS network within a Region.
Subnets
Subnet belongs to one AZ.
Public subnet: Route to Internet Gateway.
Private subnet: No direct route to Internet Gateway.
Gateways
Internet Gateway (IGW): Connects VPC to the internet.
NAT Gateway: Allows private resources outbound IPv4 internet access.
NAT Gateway is placed in a public subnet.
Route Tables
local = traffic within the VPC.
0.0.0.0/0 = all IPv4 destinations.
