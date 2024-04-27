# 1 Update package list
sudo apt update

# 2 Install snapd:
sudo apt install snapd


# 3 Ensure you have the latest snapd version installed:
sudo snap install core; sudo snap refresh core

# 4  Install Certbot with snapd:
sudo snap install --classic certbot

# 5 Create a symlink to ensure Certbot runs:
sudo ln -s /snap/bin/certbot /usr/bin/certbot

# 6 Create SSL certs for all domains and configure redirects in the web server:
sudo certbot --nginx -d rtc.obrucheoghene.tech -d anotherdomain.com




Set Up Auto-Renewal: Certbot provides a cron job that runs twice daily and will automatically renew any certificates that are near expiry. You can verify the auto-renewal setup by running:
bash
Copy code
sudo certbot renew --dry-run

# https://www.inmotionhosting.com/support/website/ssl/lets-encrypt-ssl-ubuntu-with-certbot/

# 6 Configure Your Web Server:
# Nginx:
# Create SSL server blocks for your subdomains. Example configuration files:
# server {
#     listen 80;
#     server_name subdomain1.example.com;
#     return 301 https://$host$request_uri;
# }

# server {
#     listen 443 ssl;
#     server_name subdomain1.example.com;
#     ssl_certificate /etc/letsencrypt/live/subdomain1.example.com/fullchain.pem;
#     ssl_certificate_key /etc/letsencrypt/live/subdomain1.example.com/privkey.pem;

#     # Other SSL configuration options

#     # ... Additional SSL configurations ...
# }
 
