#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

opdater_atom(){
sudo curl -# -o /usr/local/bin/atomicwallet.AppImage https://get.atomicwallet.io/download/atomicwallet.AppImage && chmod a+x /usr/local/bin/atomicwallet.AppImage && sudo cp /tmp/atomic_wallet_checksum.tmp ~/.config/atomic_wallet/atomic_wallet_checksum
}

tjek_manuelle_installationer(){

# Hent Atomic Wallet checksum

[[ ! -d ~/.config/atomic_wallet/ ]] && echo "Opretter mappe til opdatering af Atomic Wallet" &&  mkdir ~/.config/atomic_wallet && echo "Oprettede mappen ~/.config/atomic_wallet"
echo "Henter Atomic Wallet Checksum..."
curl -o /tmp/atomic_wallet_checksum.tmp https://get.atomicwallet.io/download/sha256sum.txt &>/dev/null && echo "Hentede Atomic Wallet checksum!"

ny_atom_checksum=$(cat </tmp/atomic_wallet_checksum.tmp | awk '/atomicwallet.AppImage/ {print $1}')
atom_checksum=$(cat <~/.config/atomic_wallet/atomic_wallet_checksum | awk '/atomicwallet.AppImage/ {print $1}')

echo "Atomic Wallet checksum: $ny_atom_checksum (ny)"
echo "Atomic Wallet chacksum: $atom_checksum (eksisterende)"

[[ ! -f ~/.config/atomic_wallet/atomic_wallet_checksum ]] && echo "Ingen checksum-fil fundet. Geninstallerer Atomic Wallet..." && opdater_atom
[[ "$ny_atom_checksum" != "$atom_checksum" ]] && echo "Atomic Wallet bør opdateres! Starter opdatering..." && opdater_atom 
[[ "$ny_atom_checksum" == "$atom_checksum" ]] && echo "Den nyeste version af Atomic Wallet findes allerede i systemet!" 

}

opdater(){

#Opdater Atom
[[ "$1" == "atom" ]] && tjek_manuelle_installationer

# Opdater hele systemet
[[ -z "$1" ]] && echo "Opdaterering af systemet startes ..." &&  yay -Syu && echo "Opdaterer Atomic Wallet ..." && tjek_manuelle_installationer

}

alias ls='ls --color=auto'
alias atom='/usr/local/bin/atomicwallet.AppImage &>/dev/null'
alias opdater=opdater
alias bw='bitwarden-desktop &>/dev/null'
alias ff='firefox &>/dev/null'

PS1='\[\e[1;36m\]\A\[\e[m\] \[\e[1;34;107m\] \u\[\e[m\]\[\e[1;30;107m\]@\h \[\e[m\]\[\e[0;33m\] [\W]\$\[\e[m\] '
export HISTSIZE=500000
export HISTFILESIZE=100000
LS_COLORS=$LS_COLORS:'di=1;33:fi=0;37:ex=1;36' ; export LS_COLORS
