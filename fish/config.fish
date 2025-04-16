set fish_greeting

set -Ux EDITOR nvim 

bind \cw backward-kill-word

if status --is-interactive;
    [ -e $HOME/.config/fish/conf.d/alias.fish ]; and source $HOME/.config/fish/conf.d/alias.fish
end

function transfer --description 'Easy file sharing from the command line using http://transfer.sh'
    if test (count $argv) -eq 0
        echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md";
        return 1; 
    end
    set tmpfile ( mktemp -t transferXXX ); 
    if tty -s
        set basefile (basename $argv[1] | sed -e 's/[^a-zA-Z0-9._-]/-/g');
        curl --progress-bar --upload-file $argv[1] "https://transfer.sh/$basefile" >> $tmpfile; 
    else 
        curl --progress-bar --upload-file "-" "https://transfer.sh/$argv[1]" >> $tmpfile ; 
    end; 
    cat $tmpfile; 
    rm -f $tmpfile;
end

alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# pnpm
set -gx PNPM_HOME "/home/paul/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
