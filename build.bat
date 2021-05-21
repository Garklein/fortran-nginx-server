rem building spawn-fcgi
gcc -o spawn-fcgi.exe libs/spawn-fcgi-win32.c -lws2_32

rem compiling the fortran
cd libs/flibs
gfortran -c cgi_protocol.f90
gfortran -c fcgi_protocol.f90
cd ..
cd ..
gfortran -o fortran_fcgi.exe fortran_fcgi.f90 -I./libs/flibs ./libs/flibs/fcgi_protocol.o ./libs/flibs/cgi_protocol.o -lfcgi