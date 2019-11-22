module main

import (
	vega
	home
)

fn main() {
	server := create_server()
	home_plugin := home.config()
	server.register(home_plugin)
	server.listen()
}

fn create_server() vega.Server {
	options := vega.ServerOptions{
		host: 'localhost'
		port: 8080
	}
	server := vega.create_server(options)
	return server
}