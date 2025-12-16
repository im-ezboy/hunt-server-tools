#!/usr/bin/env bash
set -euo pipefail

G='\033[0;32m' # Green Colour
NC='\033[0m'   # No colour

echo -e "${G}[+] Special thanks and credits to EZBOY ${NC}"

# Basic system update & required packages
echo -e "${G}[+] Updating system and installing base dependencies...${NC}"
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get full-upgrade -y
sudo apt-get autoremove -y

sudo apt-get install -y \
  python3 python3-pip python2 \
  git ruby-full curl \
  build-essential

# Directory to store tools
echo -e "${G}[+] Creating directory to store your weapons${NC}"
mkdir -p "${HOME}/Weapons"
cd "${HOME}/Weapons"

# Check Go installation
if ! command -v go >/dev/null 2>&1; then
  echo -e "${G}[!] Go is not installed. Please install Go first (see README.md) and re-run this script.${NC}"
  exit 1
fi

# Installing pdtm
echo -e "${G}[+] Installing Pdtm${NC}"
go install -v github.com/projectdiscovery/pdtm/cmd/pdtm@latest
sudo mv "${HOME}/go/bin/"* /usr/local/bin || true
pdtm -ia

# Installing Sublist3r
echo -e "${G}[+] Installing Sublist3r${NC}"
sudo git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
pip3 install -r requirements.txt
cd "${HOME}/Weapons"
echo -e "${G}[+] A bullet called Sublist3r is loaded${NC}"

# Lazyrecon
echo -e "${G}[+] Installing lazyrecon${NC}"
sudo git clone https://github.com/nahamsec/lazyrecon.git
cd "${HOME}/Weapons"
echo -e "${G}[+] A bullet called Lazyrecon is loaded${NC}"

# Waybackurls
echo -e "${G}[+] Installing waybackurls${NC}"
go install github.com/tomnomnom/waybackurls@latest
echo -e "${G}[+] A bullet called waybackurls is loaded${NC}"

# sqlmap
echo -e "${G}[+] Installing sqlmap${NC}"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd "${HOME}/Weapons"
echo -e "${G}[+] A bullet called sqlmap is loaded${NC}"

# ffuf
echo -e "${G}[+] Installing ffuf${NC}"
go install github.com/ffuf/ffuf@latest
echo -e "${G}[+] A bullet called ffuf is loaded${NC}"

#nuclei
#echo "${G}[+] Installing nuclei${NC}"
#go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest
#echo "${G}[+] A bullet called nuclei is loaded${NC}"

# amass
echo -e "${G}[+] Installing amass${NC}"
go install -v github.com/OWASP/Amass/v3/...@master
echo -e "${G}[+] A bullet called amass is loaded${NC}"

# dirsearch
echo -e "${G}[+] Installing dirsearch${NC}"
git clone https://github.com/maurosoria/dirsearch.git
cd "${HOME}/Weapons"
echo -e "${G}[+] A bullet called dirsearch is loaded${NC}"

# wpscan
echo -e "${G}[+] Installing wpscan${NC}"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd "${HOME}/Weapons"
echo -e "${G}[+] A bullet called wpscan is loaded${NC}"

# nmap
echo -e "${G}[+] Installing nmap${NC}"
sudo apt-get install -y nmap
cd "${HOME}/Weapons"
echo -e "${G}[+] A bullet called nmap is loaded${NC}"

# httprobe
echo -e "${G}[+] Installing httprobe${NC}"
go install github.com/tomnomnom/httprobe@latest
echo -e "${G}[+] A bullet called httprobe is loaded${NC}"

#httpx
#echo "${G}[+] Installing httpx${NC}"
#go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
#echo "${G}[+] A bullet called httpx is loaded${NC}"

# gobuster
echo -e "${G}[+] Installing gobuster${NC}"
go install github.com/OJ/gobuster/v3@latest
echo -e "${G}[+] A bullet called gobuster is loaded${NC}"

# gau
echo -e "${G}[+] Installing gau${NC}"
go install github.com/lc/gau/v2/cmd/gau@latest
echo -e "${G}[+] A bullet called gau is loaded${NC}"

# assetfinder
echo -e "${G}[+] Installing assetfinder${NC}"
go install github.com/tomnomnom/assetfinder@latest
echo -e "${G}[+] A bullet called assetfinder is loaded${NC}"

echo -e "${G}[+] Installing dnscan${NC}"
sudo git clone https://github.com/rbsec/dnscan.git
cd dnscan*
pip3 install -r requirements.txt
cd "${HOME}/Weapons"
echo -e "${G}[+] A bullet called dnscan is loaded${NC}"

# SecList
echo -e "${G}[+] Downloading the root of all hunting SecList${NC}"
git clone https://github.com/danielmiessler/SecLists.git
cd "${HOME}/Weapons"
echo -e "${G}[+] The final bullet SecList is loaded${NC}"

# 4 Zero 3
echo -e "${G}[+] Downloading the 4 zero 3 -> 403 bypass${NC}"
git clone https://github.com/Dheerajmadhukar/4-ZERO-3.git
cd "${HOME}/Weapons"
echo -e "${G}[+] The bullet 4 zero 3 is loaded${NC}"

echo -e "${G}[+] All attack tools successfully downloaded! Created with Love <3 ${NC}"
