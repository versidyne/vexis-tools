#!/bin/bash
rsync -rtvz --exclude 'folder/to/exclude' your-user@your-server-address:/var/www/your-folder local-folder
