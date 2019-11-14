module view

import vega

pub struct Options {
    name string
}

pub fn configure(opts Options) &vega.Plugin {
    plugin := &vega.Plugin{
        name: opts.name
        version: '0.1.0'
    }

    return plugin
}