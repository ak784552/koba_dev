tar cvf tar_lib_new \
	backup.sh .alias \
	src/Makefile src/*.mk \
	src/lib/Makefile src/lib/mdiff* \
	src/lib/include/*.h src/lib/include/AC/*.h \
	src/lib/akx/*.c src/lib/akx/makefile* src/lib/akx/bak src/lib/akx/AC \
	src/lib/akb/*.c src/lib/akb/makefile \
	src/lib/aka/*.c src/lib/aka/makefile
gzip tar_lib_new

tar cvf tar_appl_coal_new \
	src/appl/Makefile src/appl/mdiff* \
	src/appl/cmn/*.c src/appl/cmn/makefile \
	src/appl/coal/*.c src/appl/coal/makefile src/appl/coal/*.ctl src/appl/coal/test \
	src/appl/coal/bak src/appl/coal/AC \
	src/appl/include/*.h src/appl/include/AC/*.h \
	src/appl/tools/*.[ch] src/appl/tools/Makefile src/appl/tools/*.txt  src/appl/tools/*.sh \
	src/tools
gzip tar_appl_coal_new

tar cvf tar_coal_new_dat \
	backup.sh \
	src/lib/akx/*.txt src/lib/akx/*.dat
gzip tar_coal_new_dat
