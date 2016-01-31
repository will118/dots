# my werid aliases
alias cat="ccat --bg=dark"
alias reddy="redis-server /usr/local/etc/redis.conf"
alias vim="nvim"
alias watchtest="clear && fswatch -o test build | xargs -n1 -I{} npm test"
alias mong="mongod --config /usr/local/etc/mongod.conf"

# 3rd party functions
eval $(thefuck --alias)
[[ -s `brew --prefix`/etc/profile.d/z.sh ]] && . `brew --prefix`/etc/profile.d/z.sh

# node stuff
export NODE_REPL_HISTORY_FILE="/Users/will/node_repl.log"
export NVM_DIR="/Users/will/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# ruby
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.3

# my functions
mkky () {
  if [ ! -z "$1" ]
  then
      mkdir "$1" && cd "$1"
  fi
}

watchy () {
  fswatch -0 $1 | xargs -0 -n 1 -I {} $2 {}
}