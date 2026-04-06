#!/bin/bash
# NGINX Official Repo Installation Script (Ubuntu/Debian)

# 1. Install prerequisites
sudo apt update
sudo apt install -y curl gnupg2 ca-certificates lsb-release ubuntu-keyring

# 2. Import official NGINX signing key
curl https://nginx.org | gpg --dearmor \

    | sudo tee /usr/share/keyrings/nginx-archive-keyring.gpg >/dev/null

# 3. Set up the stable repository
echo "deb [signed-by=/usr/share/keyrings/nginx-archive-keyring.gpg] \
http://nginx.org `lsb_release -cs` nginx" \
    | sudo tee /etc/apt/sources.list.d/nginx.list

# 4. Set repository pinning to prefer NGINX's version over Ubuntu's defaults
echo -e "Package: *\nPin: origin nginx.org\nPin: release o=nginx\nPin-Priority: 900\n" \
    | sudo tee /etc/apt/preferences.d/99nginx

# 5. Install NGINX
sudo apt update
sudo apt install -y nginx

# 6. Start and verify
sudo systemctl start nginx
sudo systemctl enable nginx
nginx -v