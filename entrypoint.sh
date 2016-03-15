# Adds a delay to start up to allow the dns service to be registered
sleep 5
/usr/local/bin/vault "$@"
