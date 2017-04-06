# mcn-example-module
Example MatConvNet module with CPP/CUDA compilation with dependencies
on MatConvNet source files which can be used as a template for new modules
with its own CPP/CUDA source files.

This module simply recompiles the `vl_nnnormalize` in the current path.
The required MatConvNet source files are specified in
`compile_mcn_example_module.m` and all are recompiled to a local object
directory. Ths compilation script attempts to re-use the last compilation
flags of the `vl_compilenn` call, if present.

Please not that the implementation has different include paths, e.g.:
```C
#include "../data.hpp"
```
is replaced with:
```C
#include <bits/data.hpp>
```
as the MatConvNet src dir is passed as `-I<MCN_ROOT>/src` flag and the
relative paths between the files are not valid.

This is just an example of the possible compilation as the module
compilation is a responsibility of the module creator.