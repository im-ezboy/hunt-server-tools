## Hunt server Tools

The `install.sh` script automatically installs a collection of popular **Bug Bounty / Recon** tools on your Linux server and stores them under the `~/Weapons` directory.

### Tools Installed

- **Sublist3r**
- **lazyrecon**
- **waybackurls**
- **sqlmap**
- **4-ZERO-3 (403 Bypass)**
- **SecLists**
- **dnscan**
- **assetfinder**
- **gau**
- **gobuster**
- **nmap**
- **wpscan**
- **dirsearch**
- **amass**
- **ffuf**
- **httprobe**
- **pdtm** (ProjectDiscovery Tool Manager) and related tools

### Requirements

- OS: **Debian/Ubuntu-based** distributions
- **sudo** privileges
- Stable internet connection

To use Go-based tools, you need Go installed. If you don't have Go yet, you can install it as shown below.

### Install Go and clone the repository

```bash
wget https://go.dev/dl/go1.22.0.linux-amd64.tar.gz
tar -xzvf go1.22.0.linux-amd64.tar.gz
sudo mv go /usr/local/
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
source ~/.zshrc
rm -rf go1.22.0.linux-amd64.tar.gz

git clone https://github.com/im-0day/hunt.git
cd hunt
chmod +x install.sh
./install.sh
```

> If you are using `bash`, replace `~/.zshrc` with `~/.bashrc` in the command above.

### Install Zsh (optional)

```bash
sudo apt update
sudo apt install -y zsh curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Notes

- After running `install.sh`, all tools are available under the `~/Weapons` directory.
- Some tools may require additional configuration (such as API keys or custom wordlists) for optimal use.

---

#### Happy bug hunting!

##### Created with Love `<3`
