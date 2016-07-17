# Enviromen
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/

# Open App
alias subl='open -a "Sublime Text"'
alias skype='open -a Skype'

# Cd folder
alias tohis='cd /Volumes/Data/Workspace/HIS/'
alias towo='cd /Volumes/Data/Workspace/'

# Open folder
alias opdop='open /Volumes/Data/Dropbox/'
alias opone='open /Volumes/Data/OneDrive/'
alias opone='open /Volumes/Data/Workspace/HIS/idempiere/reports'

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Alias git
alias gut='rm -r idempiere/org.adampiere.custum.form/ && git checkout idempiere/org.adampiere.custum.form/ && git checkout idempiere/org.adempiere.ui.zk/WEB-INF/classes/.gitignore && git checkout idempiere/org.idempiere.hazelcast.service.config/bin/.gitignore'
alias gp='git stash && git pull --rebase && git stash pop'
alias gpu='git stash && git pull --rebase && git stash pop && git push'
alias gs='git status'
alias ga='git add'
alias gf='git fetch && git status'
alias gch='git checkout'
alias glast='git log -1 HEAD'
alias gd='git diff'
alias gc='git commit -m'
alias gdt='git difftool'
alias gchdevelop='git stash && git checkout develop && git pull --rebase && git stash pop'
alias gchtttm='git stash && git checkout feature/tttm && git pull --rebase && git stash pop'
alias gchbve='git stash && git checkout feature/bve && git pull --rebase && git stash pop'
alias gchbvp='git stash && git checkout feature/bvp && git pull --rebase && git stash pop'
alias gll='git log --pretty=format:"%C(yellow)%h%Cred%d \\ %Creset%s%Cblue \\ [%cn]" --decorate --numstat'
alias gld='git log --pretty=format:"%C(yellow)%h \\ %C(green)%ad%Cred%d \\ %Creset%s%Cblue \\ [%cn]" --decorate --date=short --graph'
alias gls='git log --pretty=format:"%C(green)%h \\ %C(yellow)[%ad]%Cred%d \\ %Creset%s%Cblue \\ [%cn]" --decorate --date=relative'