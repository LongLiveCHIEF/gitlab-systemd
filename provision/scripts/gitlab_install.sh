cp /vagrant/provision/etc/yum.repos.d/gitlab_gitlab-ce.repo /etc/yum.repos.d/gitlab_gitlab-ce.repo
yum -y install curl policycoreutils openssh-server openssh-clients
systemctl enable sshd
systemctl start sshd
yum -y install postfix
systemctl enable postfix
systemctl start postfix
firewall-cmd --permanent --add-service=http
systemctl reload firewalld
yum -y install gitlab-ce
gitlab-ctl reconfigure
