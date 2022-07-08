# zsh-fuzzy-wd

[![Made in Ukraine](https://img.shields.io/badge/made_in-Ukraine-ffd700.svg?labelColor=0057b8)](https://ukraine.ua) [![Awesome zsh plugins](https://img.shields.io/badge/Awesome-zsh--plugins-d07cd0?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABVklEQVRIS+3VvWpVURDF8d9CRAJapBAfwWCt+FEJthIUUcEm2NgIYiOxsrCwULCwktjYKSgYLfQF1JjCNvoMNhYRCwOO7HAiVw055yoBizvN3nBmrf8+M7PZsc2RbfY3AfRWeNMSVdUlHEzS1t6oqvt4n+TB78l/AKpqHrdwLcndXndU1WXcw50k10c1PwFV1fa3cQVzSR4PMd/IqaoLeIj2N1eTfG/f1gFVtQMLOI+zSV6NYz4COYFneIGLSdZSVbvwCMdxMsnbvzEfgRzCSyzjXAO8xlHcxMq/mI9oD+AGlhqgxjD93OVOD9TUuICdXd++/VeAVewecKKv2NPlfcHUAM1qK9FTnBmQvJjkdDfWzzE7QPOkAfZiEce2ECzhVJJPHWAfGuTwFpo365pO0NYjmEFr5Eas4SPeJfll2rqb38Z7/yaaD+0eNM3kPejt86REvSX6AamgdXkgoxLxAAAAAElFTkSuQmCC)](https://github.com/unixorn/awesome-zsh-plugins)

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
