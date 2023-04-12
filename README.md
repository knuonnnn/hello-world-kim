## Introduction

This repository contain the required artifact to bring up a bare minimum static website hosted in S3 using AWS. To get this up and running, make sure your local environment has the following installed:

- awscli (make sure aws configure is set up and linked to the desired AWS account)
- terraform

The environment is fully set up using terraform. Customisation to the content of the page can be done on the index.html and error.html file located inside src di.. The bucket name can be also be changed via the variable.tf file located inside the terraform dir.

## Setting up the environment 
1. Clone this repo
2. From the root dir of this repo, run 'make setup' in the terminal - this should go and run a terraform lifecyle on the tf files located in the terraform directory and apply it.

## Destroy the environment 
1. From the root dir of this repo, run 'make destroy' in the terminal - this should go and run a terraform lifecyle on the tf files located in the terraform directory and apply it.

## Customising the site
1. To make changes to the content, edit the index.html/error.html file inside the src dir.
2. To make changes to the s3 bucket name, edit the variable.tf file inside the terraform dir.

## What else  would do with your website, and how you would go about doing it if you had more time.
1. Add in Cloudfront and creating custom error page/code and security overhead such as access policy for the cloudfront and s3.
2. Add in cname for custom domain
3. Redirection rule in s3 such as redirecting to the error.html page for object that doesnt exist and changes to the error code.
4. Terraform state file in s3 instead of local
5. Revamp the site using something liek angular 

## Alternative solutions that you could have taken but didn't and explain why.
1. Hosting on ec2/ecs or other similar platform would completely be more expensive. Factoring in instance and storage cost along with scalability and security maintenance would not be feasible. 
2. Hosting on ec2/ecs would not provide the performance level like on s3 and also the flexibility to integrate it with cloudfront AWS CDN is far more desirable.

## What additionally would be required to make this a production grade website that would be developed on by various development teams. The more detail, the better!
1. Add in Cloudfront - enable customising of error pages, caching behaviour and enable other security features
2. Adding in WAF with Cloudfront if the site go to production grade and integrate with other backends. 
3. Establish CICD pipeline to automate the compiling of the source code and proper deployment checks around the CICD pipeline such as linting and code quality check
4. Add in CORS if required at a later stage
5. Possibily look into rum for monitoring once the site get to a production grade level 
