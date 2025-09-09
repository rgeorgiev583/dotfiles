python
import sys
sys.path.insert(0, 'GCC_PYTHON_PATH')
from libstdcxx.v6.printers import register_libstdcxx_printers
register_libstdcxx_printers(None)
end

set print array on
set print array-indexes on
set print asm-demangle on
set print object on
set print pretty on
set print vtbl on

set pagination off
set non-stop on
set disassembly-flavor intel
