U := root

deploy:
	ansible-playbook -i ./ansible/production/inventory ./ansible/deploy.yml -u $U -verbose

