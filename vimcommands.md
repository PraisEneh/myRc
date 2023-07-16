# Vim Commands  
  
  
  
## Movement:  
  
### Basic Movement:  
h: Move cursor left  
j: Move cursor down  
k: Move cursor up  
l: Move cursor right  
### Word Movement  
w: Jump to the start of a word  
b: Jump back to the start of a word  
e: Jump to the end of a word  
### Line Movement  
0: Jump to the start of a line  
$: Jump to the end of a line  
^: Jump to the first non-blank character of the line  
### Block and Paragraph Movmeent  
{ : Move to the previous paragraph or block  
} : Move to the next paragraph or block  
### Page Movement  
Ctrl + f: Move forward one screen  
Ctrl + b: Move backward one screen  
Ctrl + d: Move forward half a screen  
Ctrl + u: Move backward half a screen  
:25: go to line '25'
### Document Movement  
gg: Go to the first line of the document  
G: Go to the last line of the document  
### Mark Movement  
m<a-z>: Mark a position with a lowercase letter  
'<a-z>: Move to a marked position within the current file  
### Search Movement  
f<char>: Move to the next occurrence of the character on  
### Scroll Movement  
Ctrl + y: Move view up (without moving cursor)  
Ctrl + e: Move view down (without moving cursor)  
### Scroll Screens  
Ctrl + u: Scroll up half a screen  
Ctrl + d: Scroll down half a screen  
Ctrl + b: Scroll up one full screen (backward)  
Ctrl + f: Scroll down one full screen (forward)  
  
  
  
  
## Editing:  
  
### Inserting text:  
i: Insert text before the cursor  
I: Insert text at the beginning of the line  
a: Insert text after the cursor  
A: Insert text at the end of the line  
o: Open a new line below the current line and start inserting text  
O: Open a new line above the current line and start inserting text  
ysiw( or ysiw): surrounds word with given character. ys means "you surround", iw means "inner word", ( is the char to surround with  
### Deleting text  
x: Delete character under the cursor  
X: Delete character before the cursor  
dw: Delete the word under the cursor  
d$ or D: Delete to the end of the line from the cursor  
dd: Delete the current line  
3dd: Delete 3 lines down from the cursor  
di( or di): delete content inside parentheses  
di[ or di]: delete content inside brackets  
ci( or ci): remove parentheses but leave content, then press Escape  
ci[ or ci]: remove brackets but leave content, then press Escape  
### Changing text  
r: Replace the character under the cursor  
cw: Change the word under the cursor  
c$: Change to the end of the line  
cc: Change the entire line  
>>: indent the line or selected block of text to the right  
<<: indent the line or selected block of text to the left  
cs(  or cs) : changes the surrounding open/close chars to ()  
### Copying and Pasting text  
yy or Y: Yank (copy) the current line  
3yy: Yank 3 lines down from the cursor  
yw: Yank (copy) the word  
p: Paste after the cursor  
P: Paste before the cursor  
### Undoing and redoing changes  
u: Undo the last change  
Ctrl + r: Redo the last undone change  
### Joining and Splitting Lines  
J: Join the current line with the next one  
:g/.$/,/^./-j: Join every two lines in the whole document  
### Working with multiple files  
:e filename: Open a file in a new buffer  
:ls or :buffers or :files: List all open buffers  
:bn and :bp: Go to the next/previous buffer  
:bd: Close the current buffer  
  
## Visual Mode:  
  
### Entering Visual Mode  
v: Visual mode, char-wise  
V: Visual mode, line-wise  
Ctrl + v: Visual mode, block-wise  
### Selecting text in Visual Mode  
h, j, k, l: Move the cursor left, down, up, and right respectively to expand the selection  
w, b: Jump by start of words to expand the selection  
$ : Jump to the end of line to expand the selection  
0 : Jump to the start of line to expand the selection  
G : Jump to the end of file to expand the selection  
gg: Jump to the start of file to expand the selection  
### Operating on the selected text in Visual Mode  
d: Delete the selected text  
y: Yank (copy) the selected text  
c: Change the selected text  
>: Indent the selected text  
<: Un-indent the selected text  
~: Swap case of the selected text  
gU: Change selected text to uppercase  
gu: Change selected text to lowercase  
### Other useful commands in Visual Mode  
o: Move cursor to the other end of the selected area  
O: Move cursor to opposite corner of a block in block-wise visual mode  
gv: Reselect the last visual selection  
  
  
## Find and Replace:  
  
### Basic Find and Replace  
:%s/old/new/g : This will replace all occurrences of 'old' with 'new' throughout the entire document  
:%s/old/new/gc : Adding 'c' at the end will ask for confirmation before making each replacement  
:%s/old/new/gi : Adding 'i' at the end makes the search case-insensitive. This command will replace 'old', 'Old', 'OLD', etc  
:%s/\<word\>/new/g : Adding \< and \> around 'word' means that Vim will only match the exact word 'word'  
  
***  
%s: This is the substitute command, the s stands for substitute and the % indicates that it should operate on every line.  
old: This is the search pattern, the text you want to replace.  
new: This is the replacement text, the text you want to use instead.  
g: This stands for global, which means it replaces all occurrences on a line. Without the 'g', only the first occurrence on each line would be replaced.***    
### Find and Replace in a Range of Lines  
:1,10s/old/new/g : This will replace 'old' with 'new' from line 1 to line 10  
  
  
  
## File Operations:  
  
:w: Write (save) the file  
:q: Quit Vim  
:q!: Quit without saving  
:wq or :x : Write and quit  
:wa : Save all open files  
:e {path/to/file}: Open a file  
### Opening in Tabs  
:tabe path/to/file  
### Navigate Between Tabs  
gt : cycle forward  
gT : cycle backwards  
3gt : go to tab 3  
### Split Screen With a file  
:sp path/to/file  
### Navigate between screens  
Ctrl + w and arrow keys  
  
:ls: Show open buffers  
:b {number}: Switch to buffer number  
  
  
## Window Splits:  
  
:split {file}: Split the window horizontally and load a file  
:vsplit {file}: Split the window vertically and load a file  
Ctrl + ws: Split window  
Ctrl + ww: Switch windows  
Ctrl + wq: Quit a window  
Ctrl + wv: Split window vertically  
:clo : Close window  
### Window Navigation  
Ctrl + wh: Move cursor left (to the left window)  
Ctrl + wl: Move cursor right (to the right window)  
Ctrl + wj: Move cursor down (to the lower window)  
Ctrl + wk: Move cursor up (to the upper window)  
Ctrl + wr: Rotate windows counter-clockwise
### Resize Windows  
Ctrl+w <  (to decrease width)  
Ctrl+w >  (to increase width)  
Ctrl+w -  (to decrease height)  
Ctrl+w +  (to increase height)  
Ctrl+w _  
Ctrl+w |  
Ctrl+w =  
  
  
  
## Others:  
  
:set number: Show line numbers  
:set hlsearch: Highlight search results  
:noh: Remove highlighting of search matches  

To comment out the current line or text selected in visual mode, use <leader>cc.  

To uncomment the current line or text selected in visual mode, use <leader>cu.  

To toggle the comment status of the selected lines, use <leader>c<space>.  
