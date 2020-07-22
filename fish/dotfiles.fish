set -g pure_symbol_prompt λ
set -g pure_threshold_command_duration 1

set -x EDITOR vim
set -x VISUAL code

set -x DOTFILES ~/.dotfiles
set -x PROJECTS ~/Code

set PATH $PATH $DOTFILES/bin $HOME/.bin

for f in $DOTFILES/*/functions
	set fish_function_path $f $fish_function_path
end

for f in $DOTFILES/*/conf.fish
	source $f
end

if test -f ~/.localrc.fish
	source ~/.localrc.fish
end
