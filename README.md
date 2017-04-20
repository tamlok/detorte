# Detorte Color Scheme for Vim
Detorte is a color scheme for Vim, which originates from built-in *desert* and *torte* color schemes. Detorte will behave mostly the same in both GUI and 256-Color terminal Vim.

Detorte has both a dark theme and a light theme, which are for your choice. :)

***
# Installation
Copy the files on your .vim/colors folder. Or alternatively, use a plugin manager such as Vundle, or Pathogen.

If you prefer the dark theme, add this in your `.vimrc` file:

```
let g:detorte_theme_mode = 'dark'
```

Or the light theme:

```
let g:detorte_theme_mode = 'light'
```

# Useful Commands
- DetorteHighContrast  
Turn on high contrast mode in dark theme mode. It is useful when you are presenting your screen.
- DetorteHighlight <group> <fg-color-num> <bg-color-num> [style]  
Change both the GUI and CTerm settings of highlight group `<group>`. `<fg-color-num>` and `<bg-color-num>` are the 256 color number and `-1` means not specified.  
`[style]` is `bold`, `italic`, or `none`.  
Example: `DetorteHighlight CursorLine 16 -1 none`.

***
# Screenshots
![Screenshots_001](https://github.com/tamlok/detorte/blob/master/screenshots/detorte_001.png)

![Screenshots_002](https://github.com/tamlok/detorte/blob/master/screenshots/detorte_002.png)

![Screenshots_003](https://github.com/tamlok/detorte/blob/master/screenshots/detorte_003.png)

![Screenshots_004](https://github.com/tamlok/detorte/blob/master/screenshots/detorte_004.png)

![Screenshots_005](https://github.com/tamlok/detorte/blob/master/screenshots/detorte_005.png)

![Screenshots_006](https://github.com/tamlok/detorte/blob/master/screenshots/detorte_006.png)

![Screenshots_007](https://github.com/tamlok/detorte/blob/master/screenshots/detorte_007.png)

