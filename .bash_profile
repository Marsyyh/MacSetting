# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export CLICOLOR=1
alias vim="mvim"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
export PATH="/usr/local/mysql/bin:${PATH}"
export PATH="~/.composer/vendor/bin:${PATH}"
export PATH="~/.npm-global/bin:$PATH"

# Set ls Color code ---------------------
if brew list | grep coreutils > /dev/null; then
	PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	alias ls='ls -F --show-control-chars --color=auto'
	eval `gdircolors -b $HOME/.dir_colors`
fi

# Set Tmux vim color ---- 
export TERM="xterm-256color"
# Set bash looks
export PS1="\[\e[32;40m\]\#\[\e[31;40m\]\u@\[\e[36;40m\]\h \[\e[0m\]\W$ "
#export PS1="\[\e[32;40m\]\# \[\e[36;40m\]\W:\[\e[0m\]"

#map safari to open safari
safari(){
	open -a /Applications/safari.app $1
}
#map chrome to open chrome
chrome(){
	open -a /Applications/Google\ Chrome.app $1
}
#map eclimd to start eclimd
eclimd(){
	cd ~/java-mars/Eclipse.app/Contents/Eclipse
	./eclimd
	cd -
}

# The next line updates PATH for the Google Cloud SDK.
source '/Users/yangyanhong/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/yangyanhong/google-cloud-sdk/completion.bash.inc'
