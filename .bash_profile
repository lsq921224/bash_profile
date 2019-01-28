alias be='bundle exec'

_gcm() {
  git commit -m "$1"
}

_gcf() {
  git commit --fixup :/"$1"
}

_gco() {
  git checkout $1
}

_gcp() {
  git cherry-pick $1
}

_gcob() {
  git checkout -b $1
}

_gg() {
  git gui
}

_gp() {
  git push $1 $2
}

_gpp() {
  git pull --prune
}

_gpo() {
  git push origin $1
}

_gpfo() {
  git push -f origin $1
}

_gpf() {
  git push -f $1 $2
}

_gri() {
  git rebase -i "$1"
}

alias ci='python -mwebbrowser https://ci.appfolio.net/overview.html'
alias pt='python -mwebbrowser https://www.pivotaltracker.com/n/projects/1093838'
alias apm='python -mwebbrowser https://github.com/appfolio/apm_bundle'

alias gap='git add -p'
alias gcm=_gcm
alias gcf=_gcf
alias gco=_gco
alias gcp=_gcp
alias gcob=_gcob
alias gcam='git commit --amend'
alias gs='git status'
alias gl='git log'
alias gg=_gg
alias gp=_gp
alias gpp=_gpp
alias gpo=_gpo
alias gpfo=_gpfo
alias gpf=_gpf
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gri=_gri
alias grm='git rebase master'
alias grmid='git rebase master --ignore-date'

alias setup='bundle install; bundle exec rake db:migrate; bundle exec rake db:migrate RAILS_ENV=test'

alias dbct='rake db:create RAILS_ENV=test'
alias dbdt='rake db:drop RAILS_ENV=test'
alias dbmt='rake db:migrate RAILS_ENV=test'
alias dbrt='rake db:rollback RAILS_ENV=test'
alias dbc='rake db:create'
alias dbd='rake db:drop'
alias dbm='rake db:migrate'
alias dbr='rake db:rollback'
alias ss='script/stop; script/start'
alias sst='script/stop;'

alias rc='rubocop'
alias rg='rubocop-git'

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
if [ -f /usr/local/etc/bash_completion ]; then
  . /usr/local/etc/bash_completion
fi

export JAVA_HOME=`/usr/libexec/java_home`
