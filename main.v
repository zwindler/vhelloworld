// main.v
module main

import vweb
import os

struct App {
	vweb.Context
}

fn main() {
	app := App{}
	vweb.run(app, 8081)
}

['/index']
pub fn (mut app App) index() vweb.Result {
    hello := "hello from "+os.hostname() or {'unknown'}
	return app.text(hello)
}
