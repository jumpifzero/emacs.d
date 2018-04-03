# Definitions
Frame = Collection of windows
Window = displays a buffer (file)

C-v	Move forward one screenful
M-v	Move backward one screenful
C-l	Clear screen and redisplay all the text,
	 moving the text around the cursor
	 to the center of the screen.
	 (That's CONTROL-L, not CONTROL-1.)

C-a	 Move to begin of line
C-e	 Move to end of line
M-a	 Move to begin of paragraph
M-e	 Move to end of paragraph

M-<	 Begin of text
M->	 End of text

C-u x cmd prefix argument; repeats cmd x times or use x as an argument

C-w   	  kill (cut)
c-y	  yank (paste)

# Find and replace

M-x replace-string str newstr	Replaces str with newstr going forward.

# Margins / Justification

M-x auto-fill-mode turns on a mode which automatically breaks at word boundaries.
You can set the margin width with C-x f number
After making changes in the middle of a paragraph, type M-q to re-fill it.

# Searching
C-s	forward incremental search
C-r	reverse incremental search
During search, another press of C-S finds the next occurrence. Backspace finds the previous. Enter ends the search.

# Scrolling

C-M-v (control+alt+v) allows scrolling another window.

# Saving

C-x s	Save all buffers
C-x C-x Save current buffer

# Getting help

C-h c (keys)	Which command is executed by the keys.
C-h k (keys)	More documentation
C-h f 		Docu about a function
C-h v		Docu about a variable.
M-x apropos	Same as C-h a
C-h a str	Finds commands with str in name		
C-h i 		Manuals


# Documentation

C-h m	Documentation for current mode.

# Buffers

C-x b	  Jump to buffer (with name)
C-x C-b	  List of buffers
C-x 1	  Maximize current window

# Frames

M-x make-frame (creates a new OS Window)
