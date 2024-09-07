ev-apply:
	rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
	terraform apply -var-file=env-dev/main.tfvars -auto-approve

prod-apply:
	rm -rf .terraform
	terraform init -backend-config=env-prd/state.tfvars
	terraform apply -var-file=env-prod/main.tfvars -auto-approve

dev-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -var-file=env-dev/main.tfvars -auto-approve

prod-destroy:
	rm -rf .terraform
	terraform init -backend-config=env-prd/state.tfvars
	terraform destroy -var-file=env-prd/main.tfvars -auto-approve