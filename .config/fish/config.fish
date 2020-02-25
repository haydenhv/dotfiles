#Prompt
function fish_prompt
	set STRING (pwd | sed "s~$HOME~\~~g" | tr "/" "\n" | cut -c 1-3 | tr "\n" "/")
	tput setaf 2
	printf "["
	tput setaf 3
	printf $USER
	tput setaf 4
	printf "@"
	tput setaf 5
	printf $hostname
	tput setaf 6
	printf " "$STRING
	tput setaf 2
	printf "]"
	tput setaf 11
	printf "\$ "
end

#Aliases
source ~/.config/fish/alias

#Set fish colors
set fish_color_command a84b8d
set fish_color_autosuggestion 86296b
set fish_color_quote 3ab475

#Set LS colors
set -x LS_COLORS "di=35:fi=0:ln=33:ex=91;01:*.sh=91:*.html=92:*.css=97:*.md=97:*.yml=93:*.c=94:*.h=94:*.h.orig=94;01:*.h.rej=94;01:*.mk=96:*LICENSE=90:*Makefile=90:*README=97:*.c.orig=94;01:*.c.rej=94;01:*.png=95:*.jpg=95:*.heic=95:*.heif=95:*.mp3=95;01:*.opus=.95;01:*.m4a=95;01:*.flac=95;01:*.wav=95;01:*.mp4=95;04:*.mkv=95;04:*.webm=95;04"


#Frame buffer
abbr -a -g video mpv $argv --vo=drm
abbr -a -g music mpv $argv --vo=drm --pause

fish_vi_key_bindings

function hostfile
		set name (curl -F "file=@$argv" http://0x0.st)
		echo "Your file has been hosted at $name"
end
