# .bashrc

cd /home/


# User specific aliases and functions
alias runoorden='cd home/oorden-web/js/ && ./node_modules/.bin/webpack -w'
alias runmesocom='cd /home/mesocom-crm/js && ./node_modules/.bin/webpack -w'
alias runmesocom2='cd /home/mesocom-crm-2/js && ./node_modules/.bin/webpack -w'
alias goapimeso='cd /home/mesocom-api/'
alias gomeso='cd /home/mesocom-crm/js/'
alias phalcon='php /home/phalcon-devtools/phalcon.php'
alias processlist='mysqladmin -u root -p -i 1 processlist'
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
alias danny='cd /home/danny'
alias net='/sbin/service network $1'
alias editb='vim ~/.bashrc'
alias apacheRestart='systemctl restart httpd.service'
alias phpRestart='service php-fpm restart'
alias aurora='cls & cd /home/aurora-manager'
alias oorden='cls & cd /home/oorden-admin'
alias setdesc='git branch --edit-description'
alias branch=gb
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
alias runcli='php /home/f-storyad/cli/app.php'
alias oordencli='cd /home/oorden-cli/ & php app/cli.php cuentas daemon & php app/cli.php impuestos & php app/cli.php retenciones & php app/cli.php cuentas buscarHijos & php app/cli.php Email daemon'
alias envstory="vim /home/storyad/.env"
 alias envapi="vim /home/storyad-api/.env"
 alias envads="vim /home/f-storyad/.env"

 alias gostory='cd /home/storyad'
 alias goapi='cd /home/storyad-api/'
 alias goads='cd /home/f-storyad/'


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
