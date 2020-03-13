![test](https://github.com/reireias/vim-cheatsheet/workflows/test/badge.svg)
# vim-cheatsheet

## About
vim-cheatsheet opens your cheat sheet file.

Open your cheatsheet file.

![cheatsheet_1](https://user-images.githubusercontent.com/24800246/60747176-5b8bc500-9fbe-11e9-86ad-56ab70342ea6.png)

Using float window in Neovim 4.

![cheatsheet_2](https://user-images.githubusercontent.com/24800246/60747179-634b6980-9fbe-11e9-8180-9576dec3229b.png)

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
```vim
let g:cheatsheet#float_window = 1
" you can change float window size.
let g:cheatsheet#float_window_width_ratio = 0.6
let g:cheatsheet#float_window_height_ratio = 0.6
```

### Change cheatsheet file by FIleType
If you want to change cheatsheet file by Filetype, you should use the following settings.

```
augroup vimrc_filetype
  autocmd!
  autocmd FileType zsh let g:cheatsheet#cheat_file = '~/.cheatsheet-zsh.md'
augroup END
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

