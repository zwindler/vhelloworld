module main

import vweb
import os

struct App {
	vweb.Context
}

fn main() {
    vweb.run_at(new_app(), vweb.RunParams{
        port: 8081
    }) or { panic(err) }
}

fn new_app() &App {
    mut app := &App{}
    // makes all static files available.
    app.mount_static_folder_at(os.resource_abs_path('.'), '/')
    return app
}

['/']
pub fn (mut app App) page_home() vweb.Result {
    // all this constants can be accessed by src/templates/page/home.html file.
    page_title := 'vhelloworld'
	host := os.hostname() or {'unknown'}

    return $vweb.html()
}
