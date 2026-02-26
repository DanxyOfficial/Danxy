help:
	@clear
	@echo "██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗"
	@echo "██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝"
	@echo "██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░"
	@echo "██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░"
	@echo "██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░"
	@echo "╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░"
	@echo
	@echo "┌─[ Bantuan Perintah ]"
	@echo "│"
	@echo "├─ make install"
	@echo "├─ make tutor"
	@echo "└─ make run"

install:
	@clear
	@echo "██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗"
	@echo "██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝"
	@echo "██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░"
	@echo "██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░"
	@echo "██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░"
	@echo "╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░"
	@echo
	@echo "[ ! ] Memulai instalasi semua dependensi..."
	@pkg update -y && pkg upgrade -y
	@pkg install python python3 nala git -y
	@pkg install coreutils ncurses-utils which nodejs bc ruby -y
	@pkg install termux-api -y
	@pkg install sox -y
	@pkg install cloudflared -y
	@pkg install openssl-tool xz-utils bzip2 boxes jq cowsay toilet -y
	@pkg install php xxd -y
	@gem install lolcat
	@npm install -g bash-obfuscate
	@pip install rich rich-cli yt-dlp
	@echo "[ ✔ ] Semua paket berhasil diinstal!"

tutor:
	@clear
	@echo "██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗"
	@echo "██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝"
	@echo "██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░"
	@echo "██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░"
	@echo "██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░"
	@echo "╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░"
	@echo
	@termux-open "https://www.youtube.com/@DanxyOfficial"
	@echo "[ INFO ] tutorialnya: https://www.youtube.com/@DanxyOfficial"

run:
	@clear
	@echo "██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗"
	@echo "██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝"
	@echo "██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░"
	@echo "██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░"
	@echo "██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░"
	@echo "╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░"
	@echo
	@echo "[ ! ] RUNNING... PROSES MENUJU RUNNING 2 - 5 MENIT [ ! ]"
	@git pull
	@bash OtakLuCuman1MBya.sh
