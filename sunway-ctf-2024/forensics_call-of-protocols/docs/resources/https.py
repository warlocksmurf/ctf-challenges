# openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -sha256 -days 365

import http.server
import ssl

server_address = ('', 443)
httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
httpd.socket = ssl.wrap_socket(httpd.socket, keyfile='key.pem', certfile='cert.pem', server_side=True)

print("Serving on https://192.168.111.129:443")
httpd.serve_forever()
