sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker $USER
sudo shutdown -r now