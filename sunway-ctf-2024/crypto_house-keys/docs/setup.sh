# Setup public and private keys
openssl genpkey -algorithm RSA -out private_key.pem
openssl rsa -pubout -in private_key.pem -out pubkey.pem

# Encrypt flag with public key
openssl rsautl -encrypt -inkey pubkey.pem -pubin -in flag.txt -out flag.txt.enc

# Decrypt flag with private key
openssl rsautl -decrypt -inkey private_key.pem -in flag.txt.enc -out flag.txt