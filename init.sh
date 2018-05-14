if [ ! -f `which git` ]
then
    echo "Installing git..."
    sudo apt-get install git > ~/init.log
fi

echo "Installing git-flow..."
wget --no-check-certificate -q -O - https://github.com/nvie/gitflow/raw/develop/contrib/gitflow-installer.sh | sudo bash > ~/init.log

if [ ! -f `which zsh` ]
then
    echo "Installing zsh..."
    sudo apt-get install zsh > ~/init.log
    chsh -s /bin/zsh `whoami`
fi

if [ ! -f `which curl` ]
then
    echo "Installing curl..."
    sudo apt-get install curl > ~/init.log
fi

echo -n "Installing "
if [ -d ~/.oh-my-zsh ]
then
    echo -n "oh-my-zsh"
    curl -s -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh > ~/init.log
fi

echo -n ", my config"
curl -s https://github.com/kix/myzsh/raw/master/.zshrc > ~/.zshrc

echo ", my vim stuff"
if [ ! -d ~/.vim ] 
then
    git clone https://github.com/kix/MyVim ~/.vim > ~/init.log
fi
if [ ! -f ~/.vimrc ]
then
    mv ~/.vim/.vimrc ~/
else
    echo " ...not overwriting!"
fi
