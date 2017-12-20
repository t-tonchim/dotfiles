#terminal
export LSCOLORS=gxfxcxdxbxegedabagacad
alias la='ls -AG'
alias ls='ls -G'
alias ll='ls -lG'

#ps1
export PS1="\w\$(__git_ps1 '[\[\033[32m\]Git:%s\[\033[0m\]]')\$(__my_svn_ps1 '[\[\033[31m\]SVN:%s\[\033[0m\]]') "

peco-git-checkout (){
  git branch | peco | xargs git checkout
}

bind '"\C-o": peco-git-checkout'
