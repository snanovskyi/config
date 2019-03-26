# Config
Personal checklist for setting up a new Mac's dev environment

## General
- Update OS X defaults
  ```sh
  defaults write com.apple.Terminal ShowLineMarks -int 0;
  defaults write com.apple.dock autohide -bool true;
  defaults write com.apple.dock tilesize -int 36;
  defaults write com.apple.dock show-recents -bool false;
  defaults write com.apple.dock mru-spaces -bool false;
  killall Dock;
  defaults write com.apple.finder CreateDesktop -bool false;
  killall Finder
  ```
- Install command line developer tools
  ```sh
  xcode-select --install
  ```
- Install [Homebrew](https://brew.sh)
- Install [Zsh](http://www.zsh.org)
  ```sh
  brew install zsh zsh-completions
  ```
- Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- Install [nvm](https://github.com/creationix/nvm)
- Install [yarn](https://yarnpkg.com)
  ```sh
  brew install yarn --ignore-dependencies
  ```
- Make SF Mono available system wide
  ```sh
  open /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*
  ```
- Fix `.ssh` permissions, if keys are copied from another machine
  ```sh
  sudo -v;
  chmod 600 ~/.ssh/id_rsa;
  chmod 600 ~/.ssh/id_rsa.pub;
  chmod 644 ~/.ssh/known_hosts;
  chmod 755 ~/.ssh
  ```
- Create `~/.ssh/config` and add the following lines to automatically load keys into the `ssh-agent` and store passphrase in Keychain
  ```sh
  Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_rsa
  ```
- Add key to `ssh-agent` and store passphrase in Keychain
  ```sh
  ssh-add -K ~/.ssh/id_rsa
  ```

## Applications
- Install [Magnet](https://itunes.apple.com/ua/app/magnet/id441258766)
- Install browsers
  ```sh
  brew cask install google-chrome firefox
  ```
- Install messengers
  ```sh
  brew cask install telegram skype discord
  ```
- Install [Adobe XD CC](https://www.adobe.com/ua/products/xd.html)

## Atom
- Install [Atom](https://atom.io)
  ```sh
  brew cask install atom
  ```
- [Setup](https://github.com/sun1x/config/blob/master/atom)

## Configs
- [.zshrc](https://github.com/sun1x/config/blob/master/.zshrc)
