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
	@if pkg list-installed 2>/dev/null | grep -q "^nodejs-lts/"; then pkg uninstall nodejs-lts -y; fi
	@if pkg list-installed 2>/dev/null | grep -q "^nodejs/"; then \
		echo "\033[36m[SKIP] nodejs sudah terinstall\033[0m"; \
	else \
		pkg install nodejs -y; \
	fi
	@echo "\033[32m[✔] INSTALL PACKAGE TERMUX...\033[0m"
	@for p in python python3 git nala coreutils ncurses-utils which bc ruby termux-api sox fzf termux-exec cloudflared openssl-tool xz-utils bzip2 boxes jq cowsay toilet php xxd curl wget clang make cmake zip unzip tar ripgrep tree file util-linux binutils brotli figlet pv xh html2text silversearcher-ag ossp-uuid whiptail; do \
		if pkg list-installed 2>/dev/null | grep -q "^$$p/"; then \
			echo "\033[36m[SKIP] $$p sudah terinstall\033[0m"; \
		else \
			echo "\033[32m[✔] Menginstall $$p...\033[0m"; \
			pkg install -y $$p || echo "\033[33m[!] Gagal install $$p, lanjut...\033[0m"; \
		fi; \
	done
	@echo "\033[32m[✔] UPDATE APT...\033[0m"
	@apt-get update -y && apt-get upgrade -y
	@echo "\033[32m[✔] CLEAN OLD PYTHON PACKAGE...\033[0m"
	@rm -rf $$PREFIX/lib/python*/site-packages/requests || true
	@echo "\033[32m[✔] UNINSTALL CONFLICT PYTHON MODULE...\033[0m"
	@pip uninstall requests -y || true
	@pip uninstall psutil -y || true
	@echo "\033[32m[✔] INSTALL PYTHON MODULE...\033[0m"
	@for m in phonenumbers rich-cli requests httpie rich yt-dlp; do \
		if pip show $$m > /dev/null 2>&1; then \
			echo "\033[36m[SKIP] Python module $$m sudah terinstall\033[0m"; \
		else \
			echo "\033[32m[✔] Menginstall Python module $$m...\033[0m"; \
			pip install $$m || echo "\033[33m[!] Gagal install $$m, lanjut...\033[0m"; \
		fi; \
	done
	@echo "\033[32m[✔] INSTALL RUBY GEM...\033[0m"
	@if gem list 2>/dev/null | grep -q "^lolcat"; then \
		echo "\033[36m[SKIP] lolcat sudah terinstall\033[0m"; \
	else \
		gem install lolcat || echo "\033[33m[!] Gagal install lolcat, lanjut...\033[0m"; \
	fi
	@echo "\033[32m[✔] INSTALL NODE MODULE...\033[0m"
	@if npm list -g bash-obfuscate 2>/dev/null | grep -q "bash-obfuscate"; then \
		echo "\033[36m[SKIP] bash-obfuscate sudah terinstall\033[0m"; \
	else \
		npm install -g bash-obfuscate || echo "\033[33m[!] Gagal install bash-obfuscate, lanjut...\033[0m"; \
	fi
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
	@git pull || true
	@if [ -f "run.sh" ]; then \
		chmod +x run.sh; \
		bash run.sh; \
	else \
		echo "\033[31m[✘] File run.sh tidak ditemukan!\033[0m"; \
	fi
