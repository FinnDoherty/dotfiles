export         M2_HOME=/usr/local/apache-maven/apache-maven-3.2.1
export              M2=$M2_HOME/bin
export            PATH=$M2:$PATH
export       PSQL_PATH="/Library/PostgreSQL/9.5/bin"
export            PATH=$PSQL_PATH:$PATH
export       JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
#export     GRADLE_HOME=/Users/fionnd/gradle-2.8
#export            PATH=$PATH:$GRADLE_HOME/bin

# meta
alias brc="vi ~/.bashrc"
alias brcshow="cat ~/.bashrc"

# postgres
alias psqld="psql -h localhost -p 5432 -U postgres"
# bash
CYAN="\[$(tput setaf 6)\]"
RESET="\[$(tput sgr0)\]"
export PS1="\t ${CYAN}\w${RESET} \$ "


alias dt="cd /Users/fionnd/Desktop"
alias pers="cd /Users/fionnd/Code/Personal"
alias copypath="pwd|pbcopy"
alias ls="ls -laGF"

alias gw="./gradlew"
alias           gs="git status -sb"
alias           gf="git fetch -p"
alias          gco="git checkout -"
alias           gc="git checkout"
alias           ga="git add ."
alias          gcm="git commit -m "
alias           gC="git commit -C ORIG_HEAD"
alias           gb="git branch"
alias  gitlogbasic="git log --pretty=format:'%Cgreen%h%Creset %ad%x09%an %x09%x09%s' --date=relative"
alias           gl="gitlogbasic -10"
alias           gp="git pull --ff-only"
alias           gd="git diff"
alias    gfix="git commit --fixup"
alias     grh="git reset HEAD"
alias     gr="git reset"
alias     gpowergraph="git log --oneline --graph --decorate"

alias refreshBash=". ~/.bash_profile; cd -"

#source .../developer-scripts/path.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# pass in 23,25 to print only those lines inclusive
printLine () 
{ 
    sed -n -e "$1p" "$2"
}


replace_dates ()
{
    perl -p -i -e 's/\d\d\d\d-\d\d-\d\d/3000-01-01/g' $@;
    perl -p -i -e 's/\d\d:\d\d:\d\d(\.\d{6})*/00:00:00/g' $@;
}


