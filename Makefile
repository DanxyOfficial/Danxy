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

	@pkg update -y && pkg upgrade -y

	@echo "\033[32m[✔] INSTALL PACKAGE TERMUX...\033[0m"
	@pkg install -y \
		python \
		python3 \
		nala \
		git \
		coreutils \
		ncurses-utils \
		which \
		nodejs \
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
		xxd

	@echo "\033[32m[✔] INSTALL PACKAGE APT...\033[0m"
	@apt-get update -y && apt-get upgrade -y

	@apt-get install -y \
		ruby \
		python \
		ossp-uuid \
		figlet \
		pv \
		toilet \
		nodejs \
		uuid-utils \
		file \
		util-linux \
		binutils \
		boxes \
		jq \
		html2text \
		tree \
		openssl-tool \
		brotli \
		coreutils \
		silversearcher-ag \
		xz-utils \
		curl \
		xh \
		ncurses-utils \
		clang \
		bc \
		nodejs-lts \
		nala \
		ripgrep \
		bzip2 \
		zip

	@echo "\033[32m[✔] MEMBERSIHKAN PACKAGE BERMASALAH...\033[0m"
	@rm -rf $$PREFIX/lib/python*/site-packages/requests || true
	@pip uninstall requests -y || true
	@pip uninstall psutil -y || true

	@echo "\033[32m[✔] INSTALL PYTHON MODULE...\033[0m"
	@pip install --upgrade pip
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