# Vim Cyberpunk Theme: 2 variations

## Installation

You can install cyberpunk via plug adding to your `.vimrc` or `init.vim`:

```
Plug 'thedenisnikulin/vim-cyberpunk'
```

Or manually copying:

- `colors` -> `~/.vim/colors`
- `autoload/airline/*` -> `~/.config/nvim/plugged/vim-airline-themes/autoload/airline/themes`
- `lightline` -> `~/.vim/autoload/lightline`

## Settings

For Cyberpunk theme:

```vimscript
set termguicolors
colorscheme cyberpunk
let g:airline_theme='cyberpunk'
```

For Silverhand theme, change `cyberpunk` in the above lines to `silverhand`.

Also you can choose between `default` or `black` cursorline color if it's enabled.

```vimscript
set cursorline
let g:cyberpunk_cursorline="black"
```

## Screenshots

![cyberpunk](./screenshots/cyberpunk.png)
![silverhand](./screenshots/silverhand.png)
---

Inspired by https://github.com/aloussase/cyberpunk
