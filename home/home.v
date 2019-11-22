module home

import vega

struct Options {
}

struct Plugin {
pub:
    name string
    version string
}

pub fn config() Plugin {
    p := Plugin{
        name: 'home'
        version: '0.0.1'
    }

    return p
}

pub fn (p Plugin) name() string {
    return p.name
}

pub fn (p Plugin) version() string {
    return p.version
}

pub fn (p Plugin) register(s vega.Server) {
}