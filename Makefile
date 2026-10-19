PREFIX ?= /usr
DESTDIR ?=

 all:
	cargo build --release

 clean:
	rm -f Cargo.lock
	rm -rf target

 install:
	install -Dm755 target/release/WaifuDownloader $(DESTDIR)$(PREFIX)/bin/WaifuDownloader
	install -Dm644 assets/WaifuDownloaderQt.desktop $(DESTDIR)$(PREFIX)/share/applications/WaifuDownloaderQt.desktop
	install -Dm644 assets/moe.nyarchlinux.waifudownloader256.png $(DESTDIR)$(PREFIX)/share/icons/hicolor/256x256/apps/moe.nyarchlinux.waifudownloader.png

 uninstall:
	rm -rf $(DESTDIR)$(PREFIX)/bin/WaifuDownloader
	rm -rf $(DESTDIR)$(PREFIX)/share/applications/WaifuDownloaderQt.desktop
	rm -rf $(DESTDIR)$(PREFIX)/share/icons/hicolor/256x256/apps/moe.nyarchlinux.waifudownloader.png

