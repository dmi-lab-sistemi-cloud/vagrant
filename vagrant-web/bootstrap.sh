# installa apache2
apt-get update
apt-get install -y apache2

# esponi il contenuto della cartella condivisa via web
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi
