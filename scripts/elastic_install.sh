#!/bin/bash

echo "ElasticSearch: Installing..."

sudo sysctl -w vm.max_map_count=262144
sudo sysctl -p
cat > /etc/yum.repos.d/es.repo << EOF
[elasticsearch-6.x]
name=Elasticsearch repository for 6.x packages
baseurl=https://artifacts.elastic.co/packages/6.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
EOF

sudo yum update -y && sudo yum install elasticsearch -y

