module home

import vega

struct Plugin {
    name string
    version string
}

pub fn configure() vega.Pluginer {
    p := Plugin{
        name: 'home'
        version: '0.0.1'
    }

    return p
}

pub fn (p Plugin) str() string {
    return '$p.name@$p.version'
}

pub fn (p Plugin) plugin(s vega.Server) {
}