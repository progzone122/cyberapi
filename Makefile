.PHONY: default

lint:
	cd src-tauri && cargo clippy 
fmt:
	cd src-tauri && cargo fmt --all --
dev:
	cargo tauri dev
icon:
	cargo tauri icon ./cyberapi.png
build:
	cargo tauri build
clean:
	cd src-tauri && cargo clean
install-cli:
	cargo install tauri-cli --version 1.3.0
orm:
	cd src-tauri && sea-orm-cli generate entity --with-serde=both \
    -u "sqlite:///~/Library/Application Support/com.bigtree.cyberapi/my_db.db" \
    -o src/entities
version:
	git cliff --unreleased --tag 0.1.8 --prepend CHANGELOG.md