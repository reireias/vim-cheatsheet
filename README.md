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

In Neovim 4 or higher, you can show cheatsheet in float window if you set the following settings.
```
let g:cheatsheet#float_window = 1
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

