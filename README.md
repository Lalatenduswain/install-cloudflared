# 🚀 Cloudflared Auto-Installer for Linux

This repository provides a fully automated **Bash script** to install the latest version of [Cloudflare Tunnel (`cloudflared`)](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/) on Linux (Ubuntu/Debian based) systems. This helps you establish a secure tunnel to your internal resources **without exposing them to the public internet**.

🔗 **GitHub Repo:** https://github.com/Lalatenduswain/install-cloudflared  
👨‍💻 **Author:** [Lalatendu Swain](https://github.com/Lalatenduswain)

---

## 📌 Features

- ✅ Automatically detects architecture (`amd64`, `arm64`, `arm`)
- ✅ Fetches the **latest release** of cloudflared from GitHub
- ✅ Downloads and installs the binary to `/usr/local/bin`
- ✅ Ensures binary is executable and available system-wide
- ✅ Minimal dependencies
- ✅ Output log with version verification

---

## 📖 Installation Guide

### 🔧 Prerequisites

Make sure your system has the following:

- 🐧 Ubuntu/Debian-based Linux system (for other distros, modify accordingly)
- `curl` installed
- `sudo` privileges for root access
- `bash` shell

Install required package:
```bash
sudo apt update && sudo apt install -y curl
