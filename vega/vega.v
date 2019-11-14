module vega

pub struct Server {
    root bool
}

pub struct Options {
}

pub struct Plugin {
    name string
    version string
}

pub fn (s Server) register(plugin Plugin) {
    println(plugin)
}

pub fn create(opts Options) Server {
    server := Server{
        root: true
    }

    return server
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