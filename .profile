export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/usr/local/mysql/bin 
alias vim="/usr/local/Cellar/vim/8.0.0027/bin/vim"

 alias rm='rm -i'
 alias cp='cp -i'
 alias mv='mv -i'
 alias gossh='cd ~/.ssh/'
 alias edith='vim /etc/httpd/conf/httpd.conf'
 alias edithost='vim /etc/hosts' 
 alias editssh='vim ~/.ssh/config'
 alias editphp='vim /etc/php.ini'
 alias vimrc='vim ~/.vimrc'
 alias editg='vim ~/.gitconfig'
 alias addPermission='chmod -R 777 $1'
 alias cls='clear'
 alias editb='vim ~/.profile'
 alias ll="ls -lhaGF"
 alias ls='ls -GF'
 alias updateb='source ~/.profile'
 alias cleancache='sudo touch /System/Library/Extensions/ && echo "Cache cleaned!"'
#Git alias
alias untrack='git update-index --assume-unchanged $1'



function parse_git_dirty {
[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
} 

BLUE="\[\033[00m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[01;32m\]"
NO_COLOR="\[\033[0m\]"
OTHER="\[\033[01;36m\]"


function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

PS1="$GREEN\u@\h$BLUE:$OTHER\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
unset color_prompt force_color_prompt

