help:
	@clear
	@echo "\033[31m    ██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗░░░██╗██████╗░██╗\033[0m"
	@echo "\033[31m    ██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝░░░██║██╔══██╗██║\033[0m"
	@echo "\033[31m    ██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░░░░██║██║░░██║██║\033[0m"
	@echo "\033[37m    ██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░░░░██║██║░░██║╚═╝\033[0m"
	@echo "\033[37m    ██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░██╗██║██████╔╝██╗\033[0m"
	@echo "\033[37m    ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝╚═════╝░╚═╝\033[0m"
	@echo
	@echo "┌─[ Bantuan Perintah ]"
	@echo "│"
	@echo "├─ make install"
	@echo "├─ make run"
	@echo "├─ make tutor"
	@echo "└─ make help"

install:
	@clear
	@echo "\033[31m    ██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗░░░██╗██████╗░██╗\033[0m"
	@echo "\033[31m    ██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝░░░██║██╔══██╗██║\033[0m"
	@echo "\033[31m    ██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░░░░██║██║░░██║██║\033[0m"
	@echo "\033[37m    ██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░░░░██║██║░░██║╚═╝\033[0m"
	@echo "\033[37m    ██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░██╗██║██████╔╝██╗\033[0m"
	@echo "\033[37m    ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝╚═════╝░╚═╝\033[0m"
	@echo
	@echo "\033[33m     [ ! ] MEMULAI INSTALL MEMBUTUHKAN WAKTU 5 - 10 MENIT! [ ! ]\033[0m"

	@echo "\033[32m[✔] UPDATE PACKAGE TERMUX...\033[0m"
	@pkg update -y && pkg upgrade -y

	@echo "\033[32m[✔] FIX NODEJS CONFLICT...\033[0m"
	@pkg uninstall nodejs-lts -y || true
	@pkg install nodejs -y

	@echo "\033[32m[✔] INSTALL PACKAGE TERMUX...\033[0m"
	@pkg install -y \
		python \
		python3 \
		git \
		nala \
		coreutils \
		ncurses-utils \
		which \
		bc \
		ruby \
		termux-api \
		sox \
		fzf \
		termux-exec \
		cloudflared \
		openssl-tool \
		xz-utils \
		bzip2 \
		boxes \
		jq \
		cowsay \
		toilet \
		php \
		xxd \
		curl \
		wget \
		clang \
		make \
		cmake \
		zip \
		unzip \
		tar \
		ripgrep \
		tree \
		file \
		util-linux \
		binutils \
		brotli \
		figlet \
		pv \
		xh \
		html2text \
		silversearcher-ag \
		ossp-uuid

	@echo "\033[32m[✔] UPDATE APT...\033[0m"
	@apt-get update -y && apt-get upgrade -y

	@echo "\033[32m[✔] CLEAN OLD PYTHON PACKAGE...\033[0m"
	@rm -rf $$PREFIX/lib/python*/site-packages/requests || true

	@echo "\033[32m[✔] UNINSTALL CONFLICT PYTHON MODULE...\033[0m"
	@pip uninstall requests -y || true
	@pip uninstall psutil -y || true

	@echo "\033[32m[✔] INSTALL PYTHON MODULE...\033[0m"
	@pip install \
		phonenumbers \
		rich-cli \
		requests \
		httpie \
		rich \
		yt-dlp

	@echo "\033[32m[✔] INSTALL RUBY GEM...\033[0m"
	@gem install lolcat

	@echo "\033[32m[✔] INSTALL NODE MODULE...\033[0m"
	@npm install -g bash-obfuscate

	@echo
	@echo "\033[32m     [ ✔ ] Semua paket berhasil diinstal!\033[0m"

tutor:
	@clear
	@echo "\033[31m    ██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗░░░██╗██████╗░██╗\033[0m"
	@echo "\033[31m    ██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝░░░██║██╔══██╗██║\033[0m"
	@echo "\033[31m    ██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░░░░██║██║░░██║██║\033[0m"
	@echo "\033[37m    ██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░░░░██║██║░░██║╚═╝\033[0m"
	@echo "\033[37m    ██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░██╗██║██████╔╝██╗\033[0m"
	@echo "\033[37m    ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝╚═════╝░╚═╝\033[0m"
	@echo
	@termux-open "https://www.youtube.com/@DanxyOfficial"
	@echo "\033[32m     [ INFO ] tutorialnya: https://www.youtube.com/@DanxyOfficial\033[0m"

run:
	@clear
	@echo "\033[31m    ██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗░░░██╗██████╗░██╗\033[0m"
	@echo "\033[31m    ██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝░░░██║██╔══██╗██║\033[0m"
	@echo "\033[31m    ██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░░░░██║██║░░██║██║\033[0m"
	@echo "\033[37m    ██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░░░░██║██║░░██║╚═╝\033[0m"
	@echo "\033[37m    ██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░██╗██║██████╔╝██╗\033[0m"
	@echo "\033[37m    ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝╚═════╝░╚═╝\033[0m"
	@echo
	@echo "\033[33m     [ ! ] RUNNING... PROSES MENUJU RUNNING 2 - 5 MENIT [ ! ]\033[0m"

	@git pull --rebase || true

	@if [ -f "run.sh" ]; then \
		chmod +x run.sh; \
		bash run.sh; \
	else \
		echo "\033[31m[✘] File run.sh tidak ditemukan!\033[0m"; \
	fi