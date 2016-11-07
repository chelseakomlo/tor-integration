
docker run -p 4747:4747 -p 9009:9009 -p 9010:9010 -u integ-tester -it tor-integration /bin/bash -c "cd tor; sh autogen.sh &&
  ./configure --disable-asciidoc && make && make install; make test-network;
  make test-stem"
