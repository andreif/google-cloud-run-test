print('Hello')


import http.server as s


class H(s.BaseHTTPRequestHandler):
    def do_GET(self):
        print(self.__dict__)
        self.wfile.write(bytes('Hello World!', 'utf-8'))


with s.ThreadingHTTPServer(('0.0.0.0', 8080), RequestHandlerClass=H) as h:
    print(h.socket.getsockname())
    try:
        h.serve_forever()
    except KeyboardInterrupt:
        print("\nKeyboard interrupt received, exiting.")
        exit(0)
