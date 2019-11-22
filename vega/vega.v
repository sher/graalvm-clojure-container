module vega

import (
    os
	net
	http
	net.urllib
)

const (
    HTTP_200 = 'HTTP/1.1 200 OK\r\nContent-Type: text/plain\r\n\r\nIt works!'
    HTTP_404 = 'HTTP/1.1 404 Not Found\r\nContent-Type: text/plain\r\n\r\n404 Not Found'
	HTTP_500 = 'HTTP/1.1 500 Internal Server Error\r\nContent-Type: text/plain\r\n\r\n500 Internal Server Error'
)

pub struct Server {
    host string
    port int
    root bool
    plugins []Pluginer
}

pub struct ServerOptions {
    host string
    port int
}

pub fn create_server(o ServerOptions) Server {
    server := Server{
        root: true
        host: o.host
        port: o.port
    }

    return server
}

pub fn (s Server) listen() {
    l := net.listen(s.port) or { panic('failed to net.listen')}

    println('server running on $s.host:$s.port')

    for {
        conn := l.accept() or { panic('failed to l.accept') }

        line := conn.read_line()
		if line == '' {
			conn.write(HTTP_500) or { panic(err) }
			conn.close() or { panic(err) }
			return
		}

        conn.write(HTTP_200) or { panic(err) }
        conn.close() or { panic(err) }
    }
}

//------------------------------
//- plugins
//------------------------------
pub interface Pluginer {
    name() string
    version() string
    register(Server)
}

pub fn (s Server) register(p Pluginer) {
}