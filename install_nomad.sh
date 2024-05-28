echo "-------Welcome to the Installation of HashiCorp - Nomad--------"
echo "------- Installing Step 1--------"

wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "------- Installing Step 2--------"

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

echo "------- Installing Step 3--------"

sudo apt update && sudo apt install nomad

echo "-------********* Installation Completed *********--------"
