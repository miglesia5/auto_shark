mkdir .ssh
exit
ls .ssh
sudo chmod 700 ~/.ssh/
sudo chmod 600 ~/.ssh/*
sudo nano /etc/ssh/sshd_config
sudo systemctl restart sshd
sudo apt install ufw
sudo ufw default allow outgoing
sudo ufw default deny incoming
sudo ufw allow ssh
sudo ufw allow 5000
sudo ufw enable
exit
ls
sudo apt install python3-pip
ls
cd automation_sharks/
cd ..
python3 -m venv automation_sharks/venv
ls
cd automation_sharks/
ls
source venv/bin/activate
ls
cd ..
sudo apt install python3-venv
python3 -m venv automation_sharks/venv
ls
cd automation_sharks/
ls
source venv/bin/activate
pip install -r requirements.txt
sudo touch /etc/config.json
sudo nano /etc/config.json
sudo nano kl_designs/config.py
sudo nano automation_sharks/config.py
sudo nano autho_shark/config.py
sudo nano auto_shark/config.py
export FLASK_APP=run.py
flask run --host=0.0.0.0
sudo nano auto_shark/config.py
sudo touch /etc/config.json
sudo nano /etc/config.json
export FLASK_APP=run.py
flask run --host=0.0.0.0
sudo apt install nginx
pip install gunicorn
sudo rm /etc/nginx/sites-enabled/default
sudo nano /etc/nginx/sites-enabled/autho_shark
sudo nano /etc/nginx/sites-enabled/auto_shark
sudo ufw allow http/tcp
sudo ufw delete allow 5000
sudo ufw enable
sudo systemctl restart nginx
gunicorn -w 3 run:app
sudo apt install supervisor
sudo nano /etc/supervisor/conf.d/auto_shark.conf
sudo mkdir -p /var/log/auto_shark
sudo touch /var/log/auto_shark.err.log
sudo touch /var/log/auto_shark.out.log
sudo supervisorctl reload
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository universe
sudo apt-get update
sudo apt-get install certbot python3-certbot-nginx
sudo nano /etc/nginx/sites-enabled/auto_shark
sudo certbot --nginx
sudo certbot certonly --nginx
sudo nano /etc/nginx/sites-enabled/auto_shark
sudo certbot --nginx
sudo nano /etc/nginx/sites-enabled/auto_shark
sudo certbot --nginx
sudo certbot certonly --nginx
sudo certbot renew --dry-run
sudo ufw allow https
sudo crontab -e
sudo supervisorctl reload
exit
ls
cd automation_sharks/
source venv/bin/activate
pip install -r requirements.txt
sudo touch /etc/config.json
sudo nano /etc/config.json
sudo nano auto_shark/config.py
export FLASK_APP=run.py
flask run --host=0.0.0.0
sudo nano auto_shark/config.py
flask run --host=0.0.0.0
sudo nano auto_shark/config.py
export FLASK_APP=run.py
flask run --host=0.0.0.0
exit
cd automation_sharks/
source venv/bin/activate
sudo supervisorctl reload
sudo nano /etc/nginx/sites-enabled/auto_shark
sudo supervisorctl reload
cd automation_sharks/
source venv/bin/activate
sudo nano /etc/nginx/sites-enabled/auto_shark
sudo certbot --nginx
sudo certbot certonly --nginx
sudo certbot renew --dry-run
sudo ufw allow https
sudo supervisorctl reload
