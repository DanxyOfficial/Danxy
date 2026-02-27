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
	@echo "└─ make run"

install:
	@clear
	@echo "\033[31m    ██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗░░░██╗██████╗░██╗\033[0m"
	@echo "\033[31m    ██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝░░░██║██╔══██╗██║\033[0m"
	@echo "\033[31m    ██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░░░░██║██║░░██║██║\033[0m"
	@echo "\033[37m    ██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░░░░██║██║░░██║╚═╝\033[0m"
	@echo "\033[37m    ██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░██╗██║██████╔╝██╗\033[0m"
	@echo "\033[37m    ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝╚═════╝░╚═╝\033[0m"
	@echo
	@echo "     [ ! ] Memulai instalasi semua dependensi..."
	@pkg update -y && pkg upgrade -y
	@pkg install python python3 nala git -y
	@pkg install coreutils ncurses-utils which nodejs bc ruby -y
	@pkg install termux-api -y
	@pkg install sox -y
	@pkg install cloudflared -y
	@pkg install openssl-tool xz-utils bzip2 boxes jq cowsay toilet -y
	@pkg install php xxd -y
	@apt-get update -y
	@apt-get upgrade -y
	@apt-get install ruby python ossp-uuid figlet pv toilet nodejs uuid-utils file util-linux binutils -y
	@apt-get install boxes jq html2text tree toilet figlet openssl-tool brotli coreutils silversearcher-ag xz-utils -y
	@apt-get install curl xh ncurses-utils clang bc nodejs-lts ossp-uuid nala xz-utils ripgrep bzip2 zip -y
	@rm -rf $$PREFIX/lib/python*/site-packages/requests
	@pip uninstall requests -y
	@pip uninstall psutil -y
	@pip install phonenumbers rich-cli requests httpie
	@gem install lolcat
	@npm install -g bash-obfuscate
	@pip install rich rich-cli yt-dlp
	@echo "     [ ✔ ] Semua paket berhasil diinstal!"

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
	@echo "     [ INFO ] tutorialnya: https://www.youtube.com/@DanxyOfficial"

run:
	@clear
	@echo "\033[31m    ██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗░░░██╗██████╗░██╗\033[0m"
	@echo "\033[31m    ██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝░░░██║██╔══██╗██║\033[0m"
	@echo "\033[31m    ██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░░░░██║██║░░██║██║\033[0m"
	@echo "\033[37m    ██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░░░░██║██║░░██║╚═╝\033[0m"
	@echo "\033[37m    ██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░██╗██║██████╔╝██╗\033[0m"
	@echo "\033[37m    ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░╚═╝╚═╝╚═════╝░╚═╝\033[0m"
	@echo
	@echo "     [ ! ] RUNNING... PROSES MENUJU RUNNING 2 - 5 MENIT [ ! ]"
	@git pull
	@bash OtakLuCuman1MBya.sh
