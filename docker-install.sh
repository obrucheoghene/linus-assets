# 1 Update APT Package List:
sudo apt update

# 2 Install Prerequisites:
# Install the packages that allow you to install software over HTTPS:

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 3 Add Docker GPG Key:
#  Add Docker's official GPG key to ensure the downloaded packages are authentic:
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 4 Set Up Docker Repository:
#  Add Docker's repository to your APT sources:
# For x86_64/amd64 architecture:
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 5 Install Docker Engine:
sudo apt update

# if there is an error run this command
gpg --keyserver keyserver.ubuntu.com --recv-key 7EA0A9C3F273FCD8
gpg --export --armor 7EA0A9C3F273FCD8 | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# if no error continue from here
sudo apt install -y docker-ce docker-ce-cli containerd.io





# 6 Start and Enable Docker:
sudo systemctl start docker
sudo systemctl enable docker

# 7 Verify Docker Installation:
docker --version

# 8 Manage Docker as a Non-Root User (Optional):
sudo usermod -aG docker $USER

# 9 Log out and back in
