module main

import (
    vega
    home
)

fn main() {
    server := vega.create_server(vega.ServerOptions{})
    server.plugin(home.configure())
}