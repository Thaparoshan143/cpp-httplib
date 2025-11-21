premake5 gmake
make
echo "make complete running exe.."
./bin/*/* ${*} # forward all the args..