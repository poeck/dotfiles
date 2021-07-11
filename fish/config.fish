#set fish_greeting "
#
#        /`-._
#      /_,.._`:-          
#  ,.-'  ,   `-:..-')      
# : o ):';      _  {      
#  `-._ `'__,.-'\`-.)
#      `\\  \,.-'`
#
# "

# function fish_greeting
# echo ""
# echo  "        /`-._            " 
# echo "      /_,.._`:-         "(set_color grey) Time:  (set_color magenta; date +%T; set_color normal)
# echo "  ,.-'  ,   `-:..-')  	"(set_color grey) Date:  (set_color red; date '+%m/%d/%y'; set_color normal)
# echo " : o ):';      _  {     "(set_color grey) Host:  (set_color green)paul@koeck(set_color normal)
# echo "  `-._ `'__,.-'\`-.)    "(set_color grey) Site: (set_color blue)paul.koeck.dev(set_color normal)
# echo "      `\\  \,.-'`         "
# echo ""
# echo ""
# end

function fish_greeting 
end

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# aliases
# alias ls "exa --icons"
# alias ll "exa --icons"
# alias ls "/usr/bin/exa -l -T --icons --no-permissions --no-user --no-filesize"
alias expl "nautilus --browser ."
alias g git
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

bind \cw 'cd ..'

if status is-interactive
  cd $HOME
end

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# NVM
function __check_rvm --on-variable PWD --description 'Do nvm stuff'
  status --is-command-substitution; and return

  if test -f .nvmrc; and test -r .nvmrc;
    nvm use
  else
  end
end

switch (uname)
  case Darwin
    source (dirname (status --current-filename))/config-osx.fish
  case Linux
    # Do nothing
  case '*'
    source (dirname (status --current-filename))/config-windows.fish
end

set LOCAL_CONFIG (dirname (status --current-filename))/config-local.fish
if test -f $LOCAL_CONFIG
  source $LOCAL_CONFIG
end

# chips
if [ -e ~/.config/chips/build.fish ] ; . ~/.config/chips/build.fish ; end

# neofetch

alias albion="node /home/paul/Projects/albiontools/dist/app.js"
alias albiongame="~/albiononline/Albion-Online"
