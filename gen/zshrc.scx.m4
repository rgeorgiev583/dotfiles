changequote(`<{[(', `)]}>')dnl
dnl
define(DISTCC_ALIASES,<{[(alias distmake="make CC='distcc' CXX='distcc'; make"
alias distmakej="make -j${DISTCC_NUM_CORES} CC='distcc' CXX='distcc'; make")]}>)dnl
