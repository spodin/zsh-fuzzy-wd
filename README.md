# zsh-fuzzy-wd

[![Made in Ukraine](https://img.shields.io/badge/made_in-Ukraine-ffd700.svg?labelColor=0057b8)](https://ukraine.ua)

An [oh-my-zsh](https://ohmyz.sh) plugin that adds fuzzy search for directories "warped" with WD Zsh plugin.

<img width="650" alt="zsh-fuzzy-wd-demo" src="https://user-images.githubusercontent.com/8811713/138357543-0633e8ca-2f33-458f-b098-29384680580b.gif">

## Requirements

- Oh My Zsh
- [Fuzzy finder](https://github.com/junegunn/fzf)
- [WD plugin](https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/wd/README.md)

## Installation

1. Clone repository into Oh My Zsh custom plugins directory:

   ```bash
   git clone https://github.com/spodin/zsh-fuzzy-wd.git ~/.oh-my-zsh/custom/plugins/zsh-fuzzy-wd
   ```

2. Enable it by adding `zsh-fuzzy-wd` to the plugins array in `~/.zshrc`:

   ```
   plugins=(
     ...
     zsh-fuzzy-wd
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

### Rebind activation key

To rebind default activation key (`^B`) one of methods below can be used:

- Add this to your `~/.zshrc` config:

  ```bash
  bindkey -r "^B"                # unbind (optionally)
  bindkey '^G' fuzzy_wd_widget   # bind to Ctrl+G
  ```
  
- Set `FZF_WD_BINDKEY` environment variable:

  ```bash
  export FZF_WD_BINDKEY="^G"
  ```
