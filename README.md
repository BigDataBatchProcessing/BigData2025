# BigData2025

Środowisko wykorzystywane w ramach warsztatów Big Data 

Faza eksperymentalna - nie korzystać

# Działania

Założenie stawiamy to na Debianie

# Instalacja Dockera

sudo apt update && sudo apt upgrade -y

sudo apt install -y ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo tee /etc/apt/keyrings/docker.asc > /dev/null
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "deb [signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update

sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo systemctl enable --now docker
sudo usermod -aG docker $USER

newgrp docker

docker --version
docker run hello-world

# Visual Studio Code

sudo apt update && sudo apt install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

sudo apt update && sudo apt install -y code

code 

# Java

Pobieramy do pobrane 
x64 z 
https://adoptium.net/temurin/releases/?os=linux&version=11

rozpakowujemy

sudo mkdir -p /usr/lib/jvm/
sudo mv jdk-11.0.26+4 /usr/lib/jvm/

sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-11.0.26+4/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-11.0.26+4/bin/javac 1

sudo update-alternatives --config java

java -version

nano ~/.bashrc

export JAVA_HOME=/usr/lib/jvm/jdk-11.0.26+4
export PATH=$PATH:$JAVA_HOME/bin

source ~/.bashrc

# Pobremay 

wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.5.4.38621.tar.gz

tar -xvzf jetbrains-toolbox-*.tar.gz

cd jetbrains-toolbox-*/

./jetbrains-toolbox

instalujemy jedno i drugie 
