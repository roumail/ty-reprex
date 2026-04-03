# ty-reprex
A reproducible example about how to setup ty lsp with vim lsp and vim lsp settings

## Run using default variant in current directory
./run.sh

```bash
# Post launch checks:
# :PlugStatus
# - vim-lsp-settings: OK
# - vim-lsp: OK

# :LspStatus
# - ty: running
#
###   def foo(x: int) -> int:
#E>     return x + "hello"
###  Unsupported `+` operation

```
ty.log and vim-lsp.log are now in the current working directory
# Running other variants is possible too
