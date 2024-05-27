sudo yum update -y
#sudo amazon-linux-extras enable corretto8
#sudo yum install java-1.8.0-amazon-corretto-devel
#sudo yum install git -y
sudo yum install stress-ng -y
sudo yum install maven -y
cd /mnt/
sudo wget https://dlcdn.apache.org/maven/maven-3/3.9.6/binaries/apache-maven-3.9.6-bin.zip
sudo yum install unzip -y
sudo unzip apache-maven-3.9.6-bin.zip
sudo rm -rf apache-maven-3.9.6-bin.zip

cd /home/ec2-user
echo "export MAVEN_HOME=/mnt/apache-maven-3.9.6" >> .bashrc
echo "export M2_HOME=/mnt/apache-maven-3.9.6" >> .bashrc
echo "export M2=/mnt/apache-maven-3.9.6/bin" >> .bashrc
echo "export PATH=/mnt/apache-maven-3.9.6/bin:$PATH" >> .bashrc
  
sudo init 6
