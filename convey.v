module main

import (
    vega
)

fn main() {
    server := create_server()
    register_plugins(server)
    println(server)
    // server.listen()
}

fn create_server() vega.Server {
    server := vega.create(vega.Options{})
    return server
}

fn register_plugins(server vega.Server) {
    // register_vision(server)
    // register_static(server)
}