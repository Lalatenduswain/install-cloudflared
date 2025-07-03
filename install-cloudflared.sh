#!/bin/bash

set -e

# Function to detect architecture
get_arch() {
    ARCH=$(uname -m)
    case "$ARCH" in
        x86_64) echo "amd64" ;;
        aarch64 | arm64) echo "arm64" ;;
        armv7l | armhf) echo "arm" ;;
        *) echo "Unsupported architecture: $ARCH" && exit 1 ;;
    esac
}

# Detect OS and architecture
ARCH=$(get_arch)
OS=$(uname -s | tr '[:upper:]' '[:lower:]')

echo "[+] Detected OS: $OS, Architecture: $ARCH"

# Get the latest version from GitHub API
echo "[+] Fetching latest cloudflared version..."
LATEST_VERSION=$(curl -s https://api.github.com/repos/cloudflare/cloudflared/releases/latest | grep tag_name | cut -d '"' -f4)

if [[ -z "$LATEST_VERSION" ]]; then
    echo "[-] Failed to fetch latest version."
    exit 1
fi

echo "[+] Latest version is: $LATEST_VERSION"

# Build download URL
FILENAME="cloudflared-linux-${ARCH}"
URL="https://github.com/cloudflare/cloudflared/releases/download/${LATEST_VERSION}/${FILENAME}"

# Download binary
echo "[+] Downloading $URL"
curl -L -o cloudflared "$URL"

# Install binary
echo "[+] Installing cloudflared to /usr/local/bin..."
chmod +x cloudflared
sudo mv cloudflared /usr/local/bin/cloudflared

# Verify installation
echo "[+] Verifying installation..."
if command -v cloudflared >/dev/null; then
    echo "[✔] cloudflared installed successfully: $(cloudflared --version)"
else
    echo "[-] cloudflared installation failed."
    exit 1
fi
