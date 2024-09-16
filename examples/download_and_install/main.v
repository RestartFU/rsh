module main

import rsh

fn main() {
	res := rsh.parse_script("./DYNPKG")
	println("Maintained By ${res.variable("maintainer")}")
	res.run("install")
}
