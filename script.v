module rsh

struct Script {
	mut:
	functions map[string]Function
	variables map[string]string
}

pub fn (s Script) variable(identifier string) string {
	return s.variables[identifier]
}

pub fn (s Script) run(function string) {
	for act in s.functions[function].actions {
		act()
	}
}