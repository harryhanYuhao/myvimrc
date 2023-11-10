# Vim Script Guide

To check <a-function> in documentation, type `:h <a-function>`

## An overview

Vim script are used in configuration file as a mean of boost vim's customisation and functionality. **Importantly**, there are two kinds of vimscript: legacy and vim9. vim9 script, introduced in vim 9.0, was newer, faster, and more user frienly than the legacy script. Most vim guide on internet will be taking about legacy script. In this doc, however, I will use vim9.

To use a vim9script in a config file, the first line shall be `vim9script`. To execute a vim9script or access a variable or function defined in a vim9script in exmode, use `:vim9cmd <cmd>`.

It is also important to distinguish `ex mode` command and vimscript. In general, `ex mode` commands are those follow `:`.  (`:h ex-mod`)

Vim9's documentation can be found by `:h script`, `:h vim9`.

## Quick Syntax Guide

Comments starts with `#`. (`"` for legacy script)
```vim9script
# this is a comment
```

### Variable and Scope

In vim9, a variable can be declared with `var, const, final`.  See `:h variable`.

```vim9
var a_variable = 1
const g:global_variable = 10
```

`g:` defines the scope of variable to be global. (g:function is global function). If you want to access a variable when editting or in other script, declare it global and refering to it with `g:name`.

`b:name, w:name` are variables local to bufferm windowm. `v:name` are variable predefined by vim.

#### Types

The types of variable are `number`, `string`, `list`, etc.

### Strings 

Strings can be concatenated with `..` operator:

```vim9
var name = "Peter"
echo "Name: " .. name
```

Strings can be interpolated like this:

```vim9
echo $"Name {name}"
```

### Control Flow (Conditionals)

Vim conditions are like lua and perl:

```vim9
if {condition}
    {statements}
elseif {conditions}
    {statements}
else
    {statments}
endif
```

Here are a list of logical operators:

```
a == b
a != b
a >  b
a <  b
a >= b
a <= 
str =~ pat # string match pattern
str !~ pat # string does not match pattern
```

#### Loops

Vim has `for`, `while`, and keyword `range`, `continue` and `break` like python.

```
for i in range(1, 10)
    if i == 5
        continue # jump back to start of look
    endif
    if i == 8
        break # jump to end of loop. The rest of loop is skipped.
    endif
    echo i
endfor 
```

### Functions

Vim has a huge list of utility functions. See them with `:h function-list`

#### Custum Function

Function in vim9 are declared like this. Function name must start with **capital** letter.

```vim9
def FunctionName(args: number, args2: string)
    <statements>
enddef
```



### Strings Manipulation

### Bash interface

## Misc Helpful APIs

### Restore to previous position

```
var view = winsaveview()
# Move around, make changes
winrestview(view)
```

### Check executable

```
executable('executable')
```
Check if `executable` exists in $PATH.

## Vim legact Functionalities Reference

### Variables

This is how to assign variables:

```
let a = "echo"
```

### Function

Functions are defined like this in vimscript

```
function Run()
    echom yes!
endfunction
```

A function name must begin with **capital** letter.

To call a function in Ex mode/ command mode, use `call Run()`
