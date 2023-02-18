from http.server import HTTPServer, BaseHTTPRequestHandler
'''
class HelloHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/plain')
        self.end_headers()
        self.wfile.write(b'Hello World')

if __name__ == '__main__':
    server_address = (' ', 8000)
    httpd = HTTPServer(server_address, HelloHandler)
    print('Starting server...')
    httpd.serve_forever()
'''
def run(server_class=HTTPServer, handler_class=BaseHTTPRequestHandler):
    server_address = ('0.0.0.0', 8000)
    httpd = server_class(server_address, handler_class)
    print("Hello world")
    httpd.serve_forever()
    
if __name__ == '__main__':
    run()



