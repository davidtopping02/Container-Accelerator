# Container Accelerator

A repository to streamline the deploymeny of Infrastructure as Code to AWS

## Modifying the configuration file
- Clone this repository `git clone https://github.com/davidtopping02/container-accelerator`
- Modify the configuration file located at `environments/prod/variables.tf`
- Visit the [Terraform README](environments/prod#inputs) for further information about the configuration file
- Once you have modified the `variables.tf` file, commit it to the repository in a new branch and make a pull request
- A GitHub workflow will run automatically on every pull request to validate that the terraform syntax is correct
- Merge the pull request

## Deploying the Infrastructure
- Visit the [GitHub Actions](https://github.com/davidtopping02/container-accelerator/actions) Page
- Run the [Terraform Apply](https://github.com/davidtopping02/container-accelerator/actions/workflows/terraform-apply.yml) Workflow


## Destroying the Infractructure
- To destroy the created Infrastructure, Run the [Terraform Destroy](https://github.com/davidtopping02/container-accelerator/actions/workflows/terraform-teardown.yml) workflow

## Overview of operations
![diagram](https://github.com/davidtopping02/container-accelerator/assets/63204672/6f243b3b-f162-492e-a9f3-0b2dff466cf9)