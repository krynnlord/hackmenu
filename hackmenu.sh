INPUT=/tmp/menu.sh.$$
OUTPUT=/tmp/output.sh.$$

vi_editor=${EDITOR-vi}

trap "rm $OUTPUT; rm $INPUT; exit" SIGHUP SIGINT SIGTERM

while true
do

### Main Menu ###
dialog --clear --backtitle "Cthulhu-Rising Penetration Testing Toolkit 2018" --title "Hacking Menu" --menu "Choose your hack:" 40 50 40 \
1 "nmap" \
2 "nikto" \
3 "theharvester" \
4 "wireshark" \
5 "yersinia" \
6 "openvas" \
7 "armitage" \
8 "beef" \
9 "metasploit" \
10 "airmon-ng" \
11 "aircrack-ng" \
12 "airodump-ng" \
13 "kismet" \
14 "reaver" \
15 "wifite" \
16 "fern-wifi-cracker" \
17 "golismero" \
18 "owasp-zap" \
19 "john the ripper" \
20 "hashcat" \
21 "Quit" 2>"${INPUT}"

menuitem=$(<"${INPUT}")


## Choices
case $menuitem in
  1) nmap; break;;
  2) nikito; break;;
  3) theharvester; break;;
  4) wireshark; break;;
  5) yersinia -h; break;;
  6) openvas-start; break;;
  7) armitage; break;;
  8) beef; break;;
  9) msfconsole; break;;
  10) airmon-ng --help; break;;
  11) aircrack-ng --help; break;;
  12) airodump-ng --help; break;;
  13) kismet; break;;
  14) reaver; break;;
  15) wifite; break;;
  16) fern-wifi-cracker; break;;
  17) golismero --help; break;;
  18) zaproxy; break;;
  19) john; break;;
  20) hashcat --help; break;;
  21) echo "Bye"; break;;
  *) exit;;
esac

done

exit
