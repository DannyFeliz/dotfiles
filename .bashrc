# .bashrc

cd /home/


# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias go='ssh storyad'
alias gossh='cd ~/.ssh/'
alias edith='vim /etc/httpd/conf/httpd.conf'
alias edithost='vim /etc/hosts' 
alias editssh='vim ~/.ssh/config'
alias editphp='vim /etc/php.ini'
alias vimrc='vim ~/.vimrc'
alias editg='vim ~/.gitconfig'
alias addPermission='chmod -R 777 $1'
alias cls='clear'
alias net='/sbin/service network $1'
alias editb='vim ~/.bashrc'
alias apacheRestart='systemctl restart httpd.service'
alias phpRestart='service php-fpm restart'
alias postgrestStart='sudo systemctl start postgresql'
alias postgrestStop='sudo systemctl stop postgresql'
alias mariaStart='systemctl start mariadb'
alias mariaStop='systemctl stop mariadb'
alias mariaRestart='systemctl restart mariadb'
alias mysqlStop='mariaStop'
alias mysqlStart='mariaStart'
alias mysqlRestart='mariaRestart'
alias ll="ls -lha"
alias lv='ls -F'
alias ls='ls -F --color=auto'
alias updateb='source ~/.bashrc'

 #Git alias
 alias untrack='git update-index --assume-unchanged $1'

timedatectl set-timezone America/Santo_Domingo
/sbin/service ntpd stop
ntpdate time.apple.com

eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa_github


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


   source global definitions
   if [ -f /etc/bashrc ]; then
       . /etc/bashrc
   fi

   for file in /etc/bash_completion.d/* ; do
       source "$file"
   done



source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

  for file in /etc/bash_completion.d/* ; do
    source "$file"
 done
