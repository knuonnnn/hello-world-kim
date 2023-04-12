setup:
	cd terraform && terraform init && terraform plan && terraform apply -auto-approve
destroy: 
	cd terraform && terraform destroy -auto-approve