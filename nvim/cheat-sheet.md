# Essentials

## Cursor movement (normal/visual mode)

`h`, `j`, `k`, `l` - arrow keys

`w`/`b` - next/previous word

`W`/`B` - next/previous word (space separated)

`e`/`ge` - next/previous end of word

`0`/`$` - start/end of line

`^` - first non-blank character of line (same as `Ow`)

## Editing text

`i`/`a` - start insert mode at/after cursor

`I`/`A` - start insert mode at the beginning/end of the line

`o`/`O` - add blank line below/above current line

`Esc` or `Ctrl+[` - exit insert mode

`d` - delete

`dd` - delete line

`c` - delete, then start insert mode

`cc` - delete line, then start insert mode

## Operators

`d` - deletes from the cursor to the movement location

`c` - deletes from the cursor to the movement location, then starts
insert mode

`y` - copy from the cursor to the movement location

`>` - indent one level

`<` - unindent one level

## Marking text (visual mode)

`v` - start visual mode

`V` - start ilinewise visual mode

`Ctrl+v` - start visual block mode

`Esc` or `Ctrl+[` - exit visual mode

## Clipboard

`yy` - yank a line

`p` - paste after cursor

`P` - paste before cursor

`dd` - delete (cut) a line

`x` - delete (cut) current character

`X` - delete (cut) previous character

`d`/`c` - copy the deleted text

## Exiting

`:w` - write (save) the file, don't quit

`wq` - write (save) and quit

`:q` - quit

`:q!` - quit and throws away changes

## Search/Replace

`/pattern` - search for pattern

`?pattern` - search backward for pattern

`n` - repeat search in same direction

`N` - repeat search in opposite direction

`:%s/old/new/g` - replace all old with new throughout file 

`:%s/old/new/gc` - replace all old with new throughout file
with confirmation

## General

`u` - undo

`Ctrl+r` - redo







































