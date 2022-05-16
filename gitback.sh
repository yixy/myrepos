#/bin/bash
DATE=`date +"%Y%m%d-%H%M%S.%s"`
DIR="$1/$DATE"
mkdir $DIR
cd $DIR
REPOS=`curl -s https://api.github.com/users/yixy/repos | grep clone_url | sed 's/.*\(https:\/\/github.com\/yixy\/.*\.git\)",/git clone \1/' > clone.sh`
sh clone.sh
cd ..
tar -zcvf $DATE.tar.gz $DATE
mv -f $DATE /tmp
