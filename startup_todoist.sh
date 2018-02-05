#######################################
#*
#* Please setup go (1.9) and dep
#*
#######################################

mkdir -p $GOPATH/src/github.com/sachaos
cd $GOPATH/src/github.com/sachaos
git clone https://github.com/sachaos/todoist.git
cd todoist
make install
