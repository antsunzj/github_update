#! /bin/bash
# github mirror updating script written by chuixue
# mirror source from: https://github.com/521xueweihan/GitHub520

# get the new hosts from the internet. You can change the source if you have a better one.
curl 'https://raw.hellogithub.com/hosts' > github_hosts.log

# remove the lines between "github hosts start" and "github hosts end" in /etc/hosts
echo "$(sed '/# github hosts start; Do not remove or change this line/,/# github hosts end; Do not remove or change this line/d' /etc/hosts)" > /etc/hosts

# add the start and end lines
sh -c 'echo "# github hosts start; Do not remove or change this line
# github hosts end; Do not remove or change this line" >> /etc/hosts'

# insert the new hosts into /etc/hosts
echo "$(sed '/# github hosts start; Do not remove or change this line/r github_hosts.log' /etc/hosts)" > /etc/hosts

