cd /mnt/
sudo wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.zip
sudo unzip apache-tomcat-8.5.100.zip
sudo rm -rf apache-tomcat-8.5.100.zip
sudo chmod -R 777 apache-tomcat-8.5.100/
cd apache-tomcat-8.5.100/
cd bin/
./startup.sh

cd /home/ec2-user
cd /mnt/
sudo git clone https://github.com/Shantanumajan6/project.git
sudo chmod -R 777 project/
cd project/
mvn clean install
cd target/
sudo cp LoginWebApp.war /mnt/apache-tomcat-8.5.100/webapps/
cd /mnt/apache-tomcat-8.5.100/
cd bin/
./startup.sh

