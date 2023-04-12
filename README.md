## Introduction

This repository contain the require resource to bring up a bare minimum static website hosted in S3 using AWS. To get this up and running, make sure your local environment has the following installed:

- awscli (make sure aws configure is set up and linked to the desired AWS account)
- terraform

The environment is fully set up using terraform. Customisation to the content of the page can be done on the index.html file located inside src dir.. The bucket name can be also be changed via the variable.tf file located inside the terraform dir.

## Setting up this environment 
1. From the root dir, run "make" - this should go and run a terraform lifecyle on the tf files located in the terraform directory.

## Customising the site
1. To make changes to the content, 