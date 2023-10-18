# Vim Script Guide

To check <a-function> in documentation, type `:h <a-function>`

## Quick Syntax

Comments starts with `"`
```vimscript
" this is a comment
```

## Vim Functionalities Reference

### Vim script

#### Variables

This is how to assign variables:

```
let a = "echo"
```

#### Function

Functions are defined like this in vimscript

```
function Run()
    echom yes!
endfunction
```

A function name must begin with capital letter.

To call a function in Ex mode/ command mode, use `call Run()`

#### Strings

#### Bash interface

