# Config
Personal checklist for setting up a new Mac's dev environment

## General
- Install command line developer tools
  ```sh
  xcode-select --install
  ```
- Install [Homebrew](https://brew.sh)
- Add third-party repositories to Homebrew
  ```sh
  brew tap homebrew/cask-drivers
  ```
- Install [Zsh](http://www.zsh.org)
  ```sh
  brew install zsh zsh-completions
  ```
- Install [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
- Use [.zshrc](https://github.com/sun1x/config/blob/master/.zshrc)
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
- Add SSH key to `ssh-agent` and store passphrase in Keychain
  ```sh
  ssh-add -K ~/.ssh/id_rsa
  ```
- Create `~/.ssh/config` and add the following lines
  ```sh
  Host *
    AddKeysToAgent yes
    UseKeychain yes
    IdentityFile ~/.ssh/id_rsa
  ```
- Update OS X defaults
  ```sh
  defaults write com.apple.Terminal ShowLineMarks -int 0;
  defaults write com.apple.dock autohide -bool true;
  defaults write com.apple.dock tilesize -int 36;
  defaults write com.apple.dock show-recents -bool false;
  defaults write com.apple.dock mru-spaces -bool false;
  killall Dock
  ```

## Packages
- General
  ```sh
  brew install git
  ```
- JavaScript
  - Install [nvm](https://github.com/creationix/nvm)
  - Install [yarn](https://yarnpkg.com)
    ```sh
    brew install yarn --without-node
    ```

## Applications
- General
  - Install via Homebrew
    ```sh
    brew cask install razer-synapse
    ```
  - Install [Magnet](https://itunes.apple.com/ua/app/magnet/id441258766)
- Browsers
  ```sh
  brew cask install google-chrome firefox
  ```
- Messengers
  ```sh
  brew cask install telegram skype discord
  ```

## Editor
- Install via Homebrew
  ```sh
  brew cask install atom
  ```
- [Setup](https://github.com/sun1x/config/blob/master/atom)
