apt-get update
apt-get -y install git
apt-get -y install stress
apt-get -y install apache2
cat <<EOF > /var/www/html/index.html
<html><body><p>Linux startup script from Cloud Storage.</p></body></html>
