curl -s http://ipinfo.io/ | awk -F\" '/ip/ {print $4}'
