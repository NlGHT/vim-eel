# vim-eel
This plugin provides **EEL2 language support!**  Including proper, good syntax and indentation files.  These are made from the ground up **(none of the terrible ones that try to just use one for C!)**.

![Demo EEL Animation](https://github.com/NlGHT/vim-eel/blob/assets/EELVimSupport.gif?raw=true)

It has:
- Code autocomplete snippets and suggestions are **NOW DEPRECATED** and **instead managed over at [NlGHT/vim-reasyntax](https://github.com/NlGHT/vim-reasyntax)!!**  This also now has support for all the REAPER/ReaScript languages!
- Correct syntax highlighting
- Indentation support

## Installation
Add this to your favourite plugin manager like [vim-plug](https://github.com/junegunn/vim-plug) as such:
```vim
Plug 'NlGHT/vim-eel'
```
Using [vim-reasyntax](https://github.com/NlGHT/vim-reasyntax) you can enable code snippets/autocomplete for EEL through UltiSnips in your .vimrc or other config file:
```vim
let g:reasyntax_languages = 'e' " available: 'elcp', default: ''
```
