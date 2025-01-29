#!/bin/bash

check_tool_installed() {
    command -v "$1" &> /dev/null
}

if ! command -v go &> /dev/null
then
    echo "Go is not installed."
    echo "Please install Go from https://golang.org/dl/"
    exit 1
else
    echo "Go is installed"
    echo "_______________________________________________________________________________"
fi

if ! check_tool_installed "subfinder"; then
    echo "Installing Subfinder..."
    go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
else
    echo "Subfinder is already installed."
fi

if ! check_tool_installed "assetfinder"; then
    echo "Installing Assetfinder..."
    go install github.com/tomnomnom/assetfinder@latest
else
    echo "Assetfinder is already installed."
fi

# Check and install Httpx
if ! check_tool_installed "httpx"; then
    echo "Installing Httpx..."
    go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
else
    echo "Httpx is already installed."
fi

echo "Tool installation check complete."

