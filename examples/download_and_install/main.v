module main

import rsh

fn main() {
	res := rsh.parse_script("./examples/download_and_install/DYNPKG")
	println("Maintained By ${res.variable("maintainer")}")
	res.run("install")
}
