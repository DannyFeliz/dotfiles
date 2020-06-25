# Setup
##### 1. Install zsh
 - Mac
   * `brew install zsh zsh-completions`
 - Linux
   * Centos: `sudo yum -y install zsh`
   * Ubuntu: `sudo apt-get install zsh`

##### 2. Install oh-my-zsh
- `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`

##### 3. Set as default
 - `chsh -s $(which zsh)`
 
##### 4. Reload `.zshrc`
- `source ~/.zshrc` or open a new terminal tab/window to see changes.

### Extensions
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
[autojump](https://github.com/wting/autojump)
```bash
sudo apt-get install autojump
```

Run `vim ~/.zshrc` and replace the plugin list with this

`plugins=(git zsh-autosuggestions zsh-syntax-highlighting autojump)`
