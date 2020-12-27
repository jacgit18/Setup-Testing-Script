#!/bin/bash -eux
sudo apt-get -y install openjdk-11-*
sudo snap install dbeaver-ce
sudo aptitude -y install ffmpeg

 sudo aptitude -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify key

sudo apt-key fingerprint 0EBFCD88


sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"


 sudo aptitude -y install docker-ce docker-ce-cli containerd.io

sudo snap install --classic insomnia
sudo snap install --classic postman 
sudo snap install --classic rambox
sudo snap install --classic heroku

heroku login -i
# jacdevgoo2020@gmail.com
# mgV98rJa*rb!Q7P


sudo snap install --classic flutter
sudo snap install --classic android-studio
sudo snap install --classic flutter-gallery 
flutter doctor 
flutter doctor --android-licenses

sudo aptitude -y install atom



# Vscode
sudo snap install --classic code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo aptitude -y update && sudo aptitude -y install code

# node js is connected to npm when installing node js your installing npm 
# which is package manager nvm is node version manager basically controlling
# the version your using.

# check node version
# node --version

# nvm list

# nvm install version name

# this will change system nvm version and the node version associated with it
# nvm use version name 

curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/

     sudo apt-get -y update && sudo apt-get -y install yarn


vivaldi https://docs.microsoft.com/en-us/dotnet/core/install/linux-package-manager-ubuntu-1804

# Other Web Dev Stuff

# sudo aptitude install -y php7.0 libapache2-mod-php7.0
# sudo aptitude install -y php7.2 libapache2-mod-php7.2


# sudo aptitude -y install mysql-server
# sudo /etc/init.d/apache2 restart

# http://localhost/

# cd /var/www/html
# sudo touch index.php
# sudo nano index.php
# <?php echo 'HELLO'; ?>


# sudo rm index.html

# sudo aptitude -y install filezilla

sudo aptitude -y install build-essential python-dev python-setuptools python-pip python-smbus

sudo aptitude -y install libncursesw5-dev libgdbm-dev libc6-dev

sudo aptitude -y install zlib1g-dev libsqlite3-dev tk-dev

sudo aptitude -y install libssl-dev openssl


exit 0
