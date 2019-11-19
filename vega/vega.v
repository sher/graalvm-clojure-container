module vega

pub struct Server {
    root bool
}

pub struct ServerOptions {
}

pub fn create_server(o ServerOptions) Server {
    server := Server{
        root: true
    }

    return server
}

//------------------------------
//- plugins
//------------------------------
pub struct Plugin {
    name string
    version string
}

pub interface Pluginer {
    str() string
    plugin(Server)
}

pub fn (s Server) plugin(p Pluginer) {
}

// import (
//     os
//     net
//     http
//     net.urllib
// )

// fn main() {
//     l := net.listen(8080) or {
//         panic('cant listen')
//     }

//     for {
//         conn := l.accept() or {
//             panic('cant accept')
//         }

//         println(conn)

//         break
//     }
// }