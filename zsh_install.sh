# ZSH {{{

echo -n "Changing shell...            "
chsh -s /bin/zsh && echo "[Done]"

echo -n "Setup grml config file... "
# http://grml.org/zsh
wget -O ~/.zshrc.grml http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
sudo mv ~/.zshrc.grml /etc/zsh/zshrc.grml
echo "[Done]";

echo -n "Setup meisterluk config file... "
cp dotfiles/.zshrc ~/.zshrc
echo "[Done]";

# }}}
