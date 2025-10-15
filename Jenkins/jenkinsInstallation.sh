dnf install -y git maven

wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

dnf upgrade -y

dnf install -y fontconfig java-17-amazon-corretto

dnf install -y jenkins

systemctl daemon-reload

systemctl enable jenkins

systemctl start jenkins

systemctl status jenkins
