en="""
Welcome to IZOS !
IZOS is a minimalist linux based operating system
Here are the built-in apps on the initramfs disk:
asciipat: Incredible game
htop: Task manager
neofetch: system flex tool
nyancat: nyanyanyanya
cmatrix: To look hacker
all standard busybox tools: a must have
python: a popular programming language
yazi: a file explorer (a little buggy)
nano: Text editor
sudo: My version of sudo, very dangerous and powerful
wpa_supplicant: For WiFi (W.I.P.)
Enjoy !
"""
fr="""
Bienvenue sur IZOS !
IZOS est un système d'exploitation minimaliste avec un noyau linux
Voici les applications integrées dans le système 'initramfs':
asciipat: Un jeu incroyable
htop: Un gestionnaire de taches
neofetch: Pour se vanter d'utiliser IZOS
nyancat: nyanyanyanya
cmatrix: Pour ressembler a un hacker
Busybox et ses outils: Un outil obligatoire
python: Un langage de programmation populaire
yazi: Un explorateur de fichiers (Un peu bugge)
nano: Un editeur de texte
sudo: Ma version du célèbre programmae pour l'elevation de privilèges
wpa_supplicant: Pour la WiFi (En cours)
Profitez !
"""
lang = int(input("English/French ? (1-2)")) == 1
if lang:
	print(en)
else:
	print(fr)

