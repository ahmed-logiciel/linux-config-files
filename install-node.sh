VERSION=v16.14.2
DISTRO=linux-x64

mkdir -p $HOME/temporary
cd $HOME/temporary
wget https://nodejs.org/dist/$VERSION/node-$VERSION-$DISTRO.tar.xz
sudo mkdir -p /usr/local/lib/nodejs
sudo tar -xJvf node-$VERSION-$DISTRO.tar.xz -C /usr/local/lib/nodejs 

echo 'export PATH=/usr/local/lib/nodejs/node-v16.14.2-linux-x64/bin:$PATH' >> ~/.bashrc
echo 'export PATH=/usr/local/lib/nodejs/node-v16.14.2-linux-x64/bin:$PATH' >> ~/.zshrc

source ~/.bashrc
source ~/.zshrc

node --version
npm --version
