if !which zsh
then
    echo "Installing zsh...\n"
    sudo apt-get install zsh
fi

if !which curl
then
    echo "Installing curl...\n"
    sudo apt-get install curl
fi

echo "Installing "
if [ -d ~/.oh-my-zsh ]
then
    echo "oh-my-zsh"
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

echo ", my config"
curl https://raw.github.com/kix/myzsh/master/.zshrc > ~/.zshrc

echo ", my vim stuff"
git clone https://github.com/kix/MyVim ~/.vim
mv ~/.vim/.vimrc ~/
