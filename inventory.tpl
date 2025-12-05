[web_servers]
%{ for instance in web_servers ~}
${instance.public_ip} ansible_user=ubuntu ansible_private_key_file=./terraform.pem
%{ endfor ~}

[all:vars]
ansible_python_interpreter=/usr/bin/python3