[web_servers]
%{ for instance in web_servers ~}
${instance.public_ip}
%{ endfor ~}