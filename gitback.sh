#/bin/bash
DIR="$1/`date +%s`"
mkdir -p $DIR
cd $DIR
REPOS=`curl -s https://api.github.com/users/yixy/repos | grep clone_url | sed 's/.*\(https:\/\/github.com\/yixy\/.*\.git\)",/git clone \1/' > clone.sh`
sh clone.sh
