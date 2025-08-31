from Crypto.Cipher import ChaCha20
import os

flag = b"sunctf25{placeholder_flag}"
key, iv = os.urandom(32), os.urandom(12)

def whisper(plain, k, n):
    cipher = ChaCha20.new(key=k, nonce=n)
    return cipher.encrypt(plain)

def scream(data):
    with open("out.txt", "w") as f:
        f.write(data)

if __name__ == "__main__":
    message = b"The streets of New Eridu "
    message += b"hummed with neon life, untouched by the chaos of the Hollows. Proxies whispered through back alleys, "
    message += b"chasing commissions that bordered on myth and madness. One night, "
    message += b"a Hollow surged open near Sixth Street... "

    enc_msg = whisper(message, key, iv)
    enc_flag = whisper(flag, key, iv)

    data = iv.hex() + "\n" + enc_msg.hex() + "\n" + enc_flag.hex()
    scream(data)
