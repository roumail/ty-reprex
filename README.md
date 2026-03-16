# ty-reprex
A reproducible example about how to setup ty lsp with vim lsp and vim lsp settings

# Running the variants
## Run variant 1 in /tmp/vim-lsp
./run.sh /private/tmp/vim-lsp 1

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

# No logs exist in ~/.local/ty.log
# Log check in vim-lsp.log
~ expansion correctly resolves
```

## Run variant 2 in /tmp/vim-lsp
./run.sh /private/tmp/vim-lsp 2

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

# No logs exist in $PWD/ty.log
# Log check in vim-lsp.log

# Mon Mar 16 16:34:23 2026:["<---",1,"ty",{"response":{"id":3,"jsonrpc":"2.0","result":null},"request":{"id":3,"jsonrpc":"2.0","method":"textDocument/codeAction","params":{"context":{"diagnostics":[],"only":["","quickfix","refactor","refactor.extract","refactor.inline","refactor.rewrite"]},"range":{"end":{"character":0,"line":0},"start":{"character":0,"line":0}},"textDocument":{"uri":"file:///private/tmp/vim-lsp/src/example.py"}}}}]
```
