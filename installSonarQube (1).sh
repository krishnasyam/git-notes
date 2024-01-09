Sonarqube:
It is a source code quality checking tool.

#Login as a root user.
sudo su -

#Download the SonarqQube Server software.
cd /opt
yum install wget unzip -y
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-7.6.zip
unzip sonarqube-7.6.zip


#As a good security practice, SonarQuber Server is not advised to run sonar service 
as a root user, so create a new user called sonar and grant sudo access to manage sonar
services as follows.

useradd sonar

#Give the sudo access to sonar user
visudo

sonar   ALL=(ALL)       NOPASSWD: ALL

#Change the owner and group permissions to /opt/sonarqube-7.6/ directory.

chown -R sonar:sonar /opt/sonarqube-7.6/
chmod -R 775 /opt/sonarqube-7.6/
su - sonar
cd /opt/sonarqube-7.6/bin/linux-x86-64/

./sonar.sh start


if sonar fails to start , install java in to it.
sudo wget http://mithuntechnologies.com/jdk-8u211-linux-x64.rpm
sudo yum install jdk-8u211-linux-x64.rpm -y

Troubleshooting
---------------

sonar service is not starting?

a)make sure you need to change the ownership and group to /opt/sonarqube-7.6/ directory for sonar user.
b)make sure you are trying to start sonar service with sonar user.
c)check java is installed or not using java -version command.

d34068f7c30479e838b37df3419d1ee7edd90245


mvn sonar:sonar




