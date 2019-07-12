# Config
Personal checklist for setting up a new Mac's dev environment

## General
- Update OS X defaults
  ```sh
  defaults write com.apple.dock autohide -bool true;
  defaults write com.apple.dock mru-spaces -bool false;
  defaults write com.apple.dock show-recents -bool false;
  defaults write com.apple.dock tilesize -int 36;
  killall Dock;
  defaults write com.apple.finder CreateDesktop -bool false;
  killall Finder;
  defaults write com.apple.Terminal ShowLineMarks -int 0
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
  brew install yarn
  ```
- Make SF Mono available system wide
  ```sh
  open /Applications/Utilities/Terminal.app/Contents/Resources/Fonts/*
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
- Install [Adobe Creative Cloud](https://www.adobe.com/ua/creativecloud/desktop-app.html)

## Atom
- Install [Atom](https://atom.io)
  ```sh
  brew cask install atom
  ```
- [Setup](https://github.com/sun1x/config/blob/master/atom)

## Configs
- [.zshrc](https://github.com/sun1x/config/blob/master/.zshrc)
