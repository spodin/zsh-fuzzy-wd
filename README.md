# zsh-fuzzy-wd

An [oh-my-zsh](https://ohmyz.sh) plugin that adds fuzzy search for directories "warped" with WD Zsh plugin.

## Requirements

- Oh My Zsh
- [Fuzzy finder](https://github.com/junegunn/fzf)
- [WD plugin](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/wd/README.md)

## Installation

1. Clone repository into Oh My Zsh custom plugins directory:

   ```bash
   git clone https://github.com/spodin/zsh-fuzzy-wd.git ~/.oh-my-zsh/custom/plugins/zsh-fuzzy-wd
   ```

2. Enable it by adding `fuzzy-wd` to the plugins array in `~/.zshrc`:

   ```
   plugins=(
     ...
     fuzzy-wd
     ...
   )  
   ``` 
   
## Usage

1. Add directories as warp points using WD plugin, e.g.:

   ```bash
   cd ~/Documents
   wd add docs
   ```
   
2. Press `^B` to activate plugin, filter paths by typing and press `Enter` to change directory. 