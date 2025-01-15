# Description
A sample configuration IaC repository that builds an AWS EC2 AMI   
using Ansible. Dummy application name is Pikachu

# Playbooks     
All playbooks used for deploying the application are listed in the `playbooks/` directory.  
1. `main_build_latest_ami.yml` Generate a new build server for the latest AMI

# CI/CD Pipeline
GitHub Actions are chosen for running IaC code. The program `act` can be installed from   
https://github.com/nektos/act to run `act.sh`. Setup a .env file with all secrets listed below
 
Environment variables that need to be added to each GitHub Action Environment are:  
- `APP_GIT_REPO`. The git repository used to build EC2 application
- `APP_GIT_BRANCH`. The git branch used to build the EC2 application

Secrets that need to be added to each GitHub Action Environment are as follows:  
- `ANSIBLE_USER`. User that Ansible logs in as.  
- `AWS_ACCESS_KEY`. AWS Access Key  
- `AWS_SECRET_KEY`. AWS Secret Key

## Instance Sizes 
The build instances runs as a t2.small so it can compile the NodeJS applications.  
The run instances run as a t2.micro instance.  
 
# VPC  
We want our VPC to be secure but provide internet access. 

# Incrementing version numbers 
Look into https://docs.github.com/en/actions/security-for-github-actions/security-guides/automatic-token-authentication   

# AWS CLI usage in Ansible 
It was unavoidable to use awscli directly in Ansible. The AWS CloudWatch get-metric-data command does not exist in 
Ansible. This means I cannot check for a Healthy status before creating an AMI. 

# Debugging 
1. Use `sudo tail -f /var/log/cloud-init-output.log` on launch of Build EC2 VM to see output of logs

# TODO 
[x] Build EC2 instance and deploy application code successfully
[ ] Detect when EC2 is ready to have AMI created (auto build deployments)
[ ] Configure Auto Deployments into ELB Target Groups
[ ] Signature verify aws cli in build_ec2_ami.yml
