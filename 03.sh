cd /usr/share/hassio/homeassistant
wget https://raw.githubusercontent.com/antsunzj/github_update/main/github_docker_hosts_update.sh
chmod 755 github_docker_hosts_update.sh
wget https://raw.githubusercontent.com/antsunzj/github_update/main/replace_hacs_download_mirror.sh
chmod 755 replace_hacs_download_mirror.sh
cd /usr/share/hassio/homeassistant/packages
wget https://raw.githubusercontent.com/antsunzj/github_update/main/update_hacs_download_source.yaml
chmod 755 update_hacs_download_source.yaml
wget https://raw.githubusercontent.com/antsunzj/github_update/main/update_github_docker_hosts.yaml
chmod 755 update_github_docker_hosts.yaml
docker restart homeassistant
