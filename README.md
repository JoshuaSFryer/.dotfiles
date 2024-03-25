# .dotfiles
## Custom linux config files

## Installation
1. Clone this repository in your home directory: `git clone https://github.com/JoshuaSFryer/.dotfiles.git ~`
2. Extract the desired packages with Stow:
    ```
    cd ~/.dotfiles/
    stow bash git nvim tmux
    ```
3. Install Tmux Package Manager:
    ```
    cd ~/.config/tmux/plugins/
    chmod +x install-plugins.sh
    ./install-plugins.sh
    ```


## Neovim Keybindings

### Leader Key
The "leader key" is bound to <space>; pressing this key will prefix a chord,
allowing for a series of key presses following it to execute a command.
(This is analagous to CTRL+K as a leader key in Visual Studio and Visual Studio
Code). In the keybindings below, the leader key will be annotated as $.

### General Keybindings
| Action | Binding |
|:------ | :-----: |
| File Explorer | $fe |

