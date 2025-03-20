#!/bin/bash

# Step 1: Create a "Backup" directory inside the "Documents" folder
mkdir -p ~/Documents/Backup

# Step 2: Copy all .c files from the system into the "Backup" directory
find / -type f -name "*.c" -exec cp {} ~/Documents/Backup/ \; 2>/dev/null

# Step 3: Change to the "Documents" directory
cd ~/Documents

# Step 4: Create a tar.gz file from the "Backup" directory
tar -czf Backup.tar.gz Backup

# Step 5: Delete the "Backup" directory
rm -rf ~/Documents/Backup

echo "Backup and archive completed successfully!"