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
	@pkg install coreutils ncurses-utils which python-pip nodejs bc ruby -y
	@pkg install termux-api
	@pkg install sox
	@pkg install cloudflared -y
	@pkg install openssl-tool xz-utils bzip2 boxes jq cowsay toilet -y
	@pkg install php -y
	@gem install lolcat
	@npm install -g bash-obfuscate
	@gem install lolcat
	@pip install rich
	@pip install rich-cli
	@pip install yt-dlp
    @pkg nodejs
    @pkg xxd
    @pkg openssl-tool 
    @pkg Bzip2 
    @pkg lzma
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
	@echo "[ INFO ]tutorialnya: https://www.youtube.com/@DanxyOfficial"
run:
	@clear
	@echo "██████╗░░█████╗░███╗░░██╗██╗░░██╗██╗░░░██╗"
	@echo "██╔══██╗██╔══██╗████╗░██║╚██╗██╔╝╚██╗░██╔╝"
	@echo "██║░░██║███████║██╔██╗██║░╚███╔╝░░╚████╔╝░"
	@echo "██║░░██║██╔══██║██║╚████║░██╔██╗░░░╚██╔╝░░"
	@echo "██████╔╝██║░░██║██║░╚███║██╔╝╚██╗░░░██║░░░"
	@echo "╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝░░░╚═╝░░░"
	@echo
	@echo "[ ! ] RUNING OTW JADI HACKER PROSES RUNING 2 - 5 MENIT [ ! ]"; \
        git pull
		bash OtakLuCuman1MBya.sh
