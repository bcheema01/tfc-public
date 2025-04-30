#!/bin/bash
yum update -y
amazon-linux-extras enable php7.4
amazon-linux-extras install -y php7.4
yum install -y httpd mysql php php-mysqlnd
systemctl start httpd
systemctl enable httpd
cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
cp -r wordpress/* .
rm -rf wordpress latest.tar.gz
chown -R apache:apache /var/www/html
chmod -R 755 /var/www/html
systemctl restart httpd

# Install SSM Agent (preinstalled on most Amazon Linux 2, but added for completeness)
yum install -y amazon-ssm-agent
systemctl enable amazon-ssm-agent
systemctl start amazon-ssm-agent
