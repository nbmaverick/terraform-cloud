bi:
	terraform workspace new ireland  || terraform workspace select ireland && terraform init && terraform apply -var-file envs/regions/eu-west-1/ireland.tfvars

di:
	terraform workspace new ireland  || terraform workspace select ireland && terraform init && terraform destroy -var-file envs/regions/eu-west-1/ireland.tfvars

bo:
	terraform workspace new ohio  || terraform workspace select ohio && terraform init && terraform apply -var-file envs/regions/us-east-2/ohio.tfvars

do:
	terraform workspace new ohio  || terraform workspace select ohio && terraform init && terraform destroy -var-file envs/regions/us-east-2/ohio.tfvars
