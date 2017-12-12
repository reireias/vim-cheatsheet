[![Build Status](https://travis-ci.org/reireias/vim-cheatsheet.svg?branch=master)](https://travis-ci.org/reireias/vim-cheatsheet)
# vim-cheatsheet

## About
vim-cheatsheet opens your cheat sheet file.

## Usage

Write your cheatsheet file path in `.vimrc`

```
let g:cheatsheet#cheat_file = '/path/to/your/cheetsheet'
```

Run vim-cheatsheet to show your cheatsheet file as readonly.
```
:Cheat
```

## Install

Below are some helper lines for popular package managers:

- NeoBundle
```
NeoBundle 'reireias/vim-cheatsheet'
```

- dein.vim
```
call dein#add('reireias/vim-cheatsheet')
```

