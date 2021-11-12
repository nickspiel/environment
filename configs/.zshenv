# Aliases and functions

if [ -f ~/.functions ]; then
  source ~/.functions
else
  print "~/.functions not found."
fi

if [ -f ~/.alias ]; then
  source ~/.alias
else
  print "~/.alias not found."
fi