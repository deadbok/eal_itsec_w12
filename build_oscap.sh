cd $1
#make clean 2> /dev/null || true
./configure --prefix=/tmp/openscap-installed
make
make install

