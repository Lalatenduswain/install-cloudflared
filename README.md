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
````

---

### 📥 Clone the Repository

```bash
git clone https://github.com/Lalatenduswain/install-cloudflared.git
cd install-cloudflared
```

---

### 🚀 Run the Script

```bash
chmod +x install-cloudflared.sh
./install-cloudflared.sh
```

---

## 📜 Script Explanation

The script performs the following actions:

1. Detects system **architecture** and OS.
2. Fetches the **latest stable version** of `cloudflared` from GitHub Releases API.
3. Downloads the correct binary file based on the architecture.
4. Sets **executable permission** and moves it to `/usr/local/bin`.
5. Verifies the installation with `cloudflared --version`.

---

## 📁 Script Name

**install-cloudflared.sh**
This name reflects the purpose of the script: to install Cloudflare Tunnel CLI automatically and safely.

---

## 🏗️ Usage Example

After successful installation, run:

```bash
cloudflared login
```

This will open a browser where you can authenticate your domain and start building tunnels.

To create a tunnel:

```bash
cloudflared tunnel create mytunnel
```

To start the tunnel:

```bash
cloudflared tunnel run mytunnel
```

To set it up as a persistent systemd service, follow [Cloudflare’s guide](https://developers.cloudflare.com/cloudflare-one/connections/connect-apps/run-tunnel/as-a-service/).

---

## ⚠️ Disclaimer | Running the Script

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The author is not responsible for any issues, system misconfigurations, or data loss caused by the usage of this script.

---

## 💖 Support & Donations

If this script saved you time and effort, consider supporting:

☕ [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain)

---

## 🛠️ Support or Contact

Encountering issues?
Submit a ticket or create a GitHub issue here:
👉 [https://github.com/Lalatenduswain/install-cloudflared/issues](https://github.com/Lalatenduswain/install-cloudflared/issues)

---

## 📢 Spread the Word

Found this helpful? Don’t forget to **star the repo ⭐** and **share** it with others who may benefit.
