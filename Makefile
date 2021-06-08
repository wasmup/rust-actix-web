all:
	cargo clean
	cargo build --release
# Finished release [optimized] target(s) in 2m 22s
#Edit "World" to "Rust World"	
	cargo build --release
# Finished release [optimized] target(s) in 10.22s

init:
# set target-dir = "/dev/shm/target"
	printf '\n[build]\ntarget-dir = "/dev/shm/target"\n' >> ~/.cargo/config
	rustup default nightly
	cargo init
	cargo search actix_web
	cargo check