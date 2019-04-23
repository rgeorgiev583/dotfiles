# Defined in - @ line 1
function cachemake --description alias\ cachemake\ make\ CC=\'ccache\ gcc\'\ CXX=\'ccache\ g++\'
	make CC='ccache gcc' CXX='ccache g++' $argv;
end
