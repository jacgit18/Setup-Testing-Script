
#!/bin/bash

# Function to retrieve the current device's IP address
get_ip_address() {
    local ip_address=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | head -n 1)
    if [ -z "$ip_address" ]; then
        ip_address=$(ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n 1)
    fi
    echo "$ip_address"
}

# Function to set up SSH and copy the key
setup_ssh() {
    local remote_user="$1"
    local remote_host="$2"
    local ssh_key_file="$HOME/.ssh/id_rsa"

    # Check if SSH key already exists, and if not, generate one
    if [ ! -f "$ssh_key_file" ]; then
        ssh-keygen -b 4096
    fi

    # Retrieve the current device's IP address
    local current_ip=$(get_ip_address)

    if [ -z "$current_ip" ]; then
        echo "Failed to retrieve the IP address."
        exit 1
    fi

    # Install OpenSSH server if not already installed
    sudo apt-get install -y openssh-server

    # Allow SSH traffic through the firewall (if using UFW)
    sudo ufw allow ssh

    # Copy your public key to the remote server
    ssh-copy-id "$remote_user@$remote_host"

    # Start the SSH agent and add your private key
    eval $(ssh-agent)
    ssh-add "$ssh_key_file"

    echo "SSH setup completed. Your current IP address is: $current_ip"
}

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <remote_user> <remote_host>"
    exit 1
fi

# Call the SSH setup function with provided arguments
setup_ssh "$1" "$2"
