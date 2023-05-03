# Custom Project
This repo is a template for custom projects; showing the recommended project structure and including `README` files in the `deployment` directory to provide details about how to customise each part.

## Setup Tasks
The following `OR_SETUP_TYPE` value(s) are supported:

* `production` - Requires `CUSTOM_USER_PASSWORD` environment variable to be specified 

Any other value will result in default setup.

## Encrypted files
If any encrypted files are added to the project then you will need to specify the `GFE_PASSWORD` environment variable to be able to build the project and decrypt the
files.

## DevOps Setup

#### Install `doctl`, `terragrunt`
OSX:
```sh
brew install doctl
brew install terragrunt
```
Ubuntu:
```sh
sudo snap install doctl
brew install terragrunt
```
Others:
https://docs.digitalocean.com/reference/doctl/how-to/install/
https://terragrunt.gruntwork.io/docs/getting-started/install/

#### Install `terraform`
OSX:
```sh
brew tap hashicorp/tap && brew install hashicorp/tap/terraform
```

Others:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## Deployment

We use [terragrunt](https://blog.gruntwork.io/how-to-manage-multiple-environments-with-terraform-using-terragrunt-2c3e32fc60a8) to manage k8s deployments using environment based configs.

#### Create/update kubernetes fabric for dev
```sh
cd .ci_cd/digital_ocean/live/dev/cluster
terragrunt apply
```

