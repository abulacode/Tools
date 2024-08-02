#!/bin/bash

# 定义目标服务器的用户名、密码和IP地址列表
user="root"
password="passw0rd"
server_ips=("node3"
            "node4"
            "node5"
            "node6")

for ip in "${server_ips[@]}"
do
    echo "Setting up SSH key for $user@$ip"
    expect auto_ssh_copy_id.exp "$password" "$user" "$ip"
done
