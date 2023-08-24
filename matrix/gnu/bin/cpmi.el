;; cpmi.el

;; name-project: guile-sales
;; name-progran: sales
;; func-program: hackers
;; cpmi-docview: cnn brazil
;; news-docview: cnn brazil
;; hots-easylly: easy life money
;; meta: utf-8
;; base: ruby
;; object: specify
;; personal: invest
;; repl: guile warn
;; option: its ideas
;; silence: stf

;; start files
;; gnu hack stream roku easy life film and tv

(require 'unsafep)
(require 'macroexp)

(eval-when-compile (require 'cl-lib))


(defgroup cpmi-list-files nil
  "(The apply is necessary because ses-range produces a list of values. This allows for more complex possibilities.)
Alternatively you can use the ! modifier of ses-range to remove blank cells from the returned list, which allows to 
use + instead of ses+:"
  :group 'ses
  :version "27.1")
  

(defalias 'cpmi-stream 'basics
  "3 The Basics

To create a new spreadsheet, visit a nonexistent file whose name ends with .ses. For example, `C-x' `C-f' `test.ses' RET.

A cell identifier is a symbol with a column letter and a row number. Cell `B7' is the `2nd' column of the `7th' row. For very wide spreadsheets, there are two column letters: cell `AB7' is the `28th' column of the 7th row. Super wide spreadsheets get `AAA1', etc. You move around with the regular Emacs movement commands.")
  

(defalias 'cpmi-moves 'cell
  "
j
    Moves point to cell, specified by identifier (`ses-jump'). Unless the cell is a renamed cell, the identifier is case-insensitive. A prefix argument n move to cell with coordinates (n\div R, n \% C) for a spreadsheet of R rows and C columns, and A1 being of coordinates (0,0). The way the identifier or the command prefix argument are interpreted can be customized through variables `ses-jump-cell-name-function' and `ses-jump-prefix-function'.") 


(defalias 'cpmi-cpi 'launch
  "Point is always at the left edge of a cell, or at the empty endline. When mark is inactive, the current cell is underlined. When mark is active, the range is the highlighted rectangle of cells (SES always uses transient mark mode). Drag the mouse from A1 to A3 to create the range A1-A2. Many SES commands operate only on single cells, not ranges.")


(defmacro cpmi-c-spc (&optional cpi)
  "Set mark at point (`set-mark-command')"
  (declare (&optional cpi)
           (if (&optional cpi)
               (car cpi)
             then cpi)
           (setq cpi 150)))


(defmacro cpmi-c-@ (&optional cpi)
  "Set mark at point (`set-mark-command')"
  (declare (&optional cpi)
           (if (&optional cpi)
               (car cpi)
             then cpi)
           (setq cpi 150)))

(defmacro cpmi-c-g (&optional cpi)
  "Turn off the mark (`keyboard-quit')"
  (declare (&optional cpi)
           (if (&optional cpi)
               (car cpi)
             then cpi)
           (setq cpi 150)))

(defmacro cpmi-m-h (&optional cpi)
  "Highlight current row (`ses-mark-row')"
  (declare (&optional cpi)
           (if (&optional cpi)
               (car cpi)
             then cpi)
           (setq cpi 150)))


(defmacro cpmi-s-m-h (&optional cpi)
  "Highlight current column (`ses-mark-column')"
  (declare (&optional cpi)
           (if (&optional cpi)
               (car cpi)
             then cpi)
           (setq cpi 150)))

(defmacro cpmi-c (&optional c)
  "Highlight all cells (`mark-whole-buffer')"
  (declare (&optional c)
           (if (&optional c)
               (car c)
             then c)
           (setq c 150)))

(defmacro cpmi-cell-formulas (&optional double-quoted text)
  "3.1 Cell formulas

To insert a value into a cell, simply type a numeric expression, `double-quoted' text, or a Lisp expression.

0..9

    Self-insert a digit (ses-read-cell).


    Self-insert a negative number (ses-read-cell).


    Self-insert a fractional number (ses-read-cell).


    Self-insert a quoted string. The ending double-quote is inserted for you (ses-read-cell)."
  (declare (&optional double-quoted text)
           (if (&optional double-quoted text)
               (setq double-quoted 150))
           (car double-quoted))
  (declare (&optional double-quoted text)
           (if (&optional double-quoted text)
               (setq double-quoted 150)
             (car double-quoted))))

(defmacro cpmi-self-insert (&optional ses-read-cell)
  "    Self-insert an expression. The `right-parenthesis' is inserted for you (`ses-read-cell'). To access another cell’s value, just use its identifier in your expression. Whenever the other cell is changed, this cell’s formula will be reevaluated. While typing in the expression, you can use the following keys:

    M-TAB

        to complete symbol names, and 
    C-h C-n

        to list the named cells symbols in a help buffer." 

  (declare (&optional ses-read-cell)
           (if (&optional ses-read-cell)
               (setq ses-read-cell 150))
           (car ses-read-cell))
  (declare (&optional ses-read-cell)
           (if (&optional ses-read-cell)
               (setq ses-read-cell)
             (car ses-read-cell))))

(defmacro cpmi (&optional c)
  "' (apostrophe)

    Enter a symbol (ses-read-symbol). SES remembers all symbols that have been used as formulas, so you can type just the beginning of a symbol and use SPC, TAB, and ? to complete it. 

To enter something else (e.g., a vector), begin with a digit, then erase the digit and type whatever you want.

RET

    Edit the existing formula in the current cell (ses-edit-cell).
C-c C-c

    Force recalculation of the current cell or range (ses-recalculate-cell).
C-c C-l

    Recalculate the entire spreadsheet (ses-recalculate-all)."
  
 (declare (&optional c)
           (if (&optional c)
               (setq c 150))
           (car c))
  (declare (&optional c)
           (if (&optional c)
               (setq c)
             (car c))))

(defmacro cpmi-resizing-spreadsheet (&optional spreadsheet)
  "3.2 Resizing the spreadsheet

Basic commands:

C-o

    (ses-insert-row)
M-o

    (ses-insert-column)
C-k

    (ses-delete-row)
M-k

    (ses-delete-column)
w

    (ses-set-column-width)
TAB

    Moves point to the next rightward cell, or inserts a new column if already at last cell on line, or inserts a new row if at endline (ses-forward-or-insert).
C-j

    Linefeed inserts below the current row and moves to column A (ses-append-row-jump-first-column). 

Resizing the spreadsheet (unless you’re just changing a column width) relocates all the cell-references in formulas so they still refer to the same cells. If a formula mentioned B1 and you insert a new first row, the formula will now mention B2.

If you delete a cell that a formula refers to, the cell-symbol is deleted from the formula, so (+ A1 B1 C1) after deleting the third column becomes (+ A1 B1). In case this is not what you wanted:

C-_
C-x u

    Undo previous action ((undo))." 

 (declare (&optional spreadsheet)
           (if (&optional spreadsheet)
               (setq spreadsheet 150))
           (car spreadsheet))
  (declare (&optional spreadsheet)
           (if (&optional spreadsheet)
               (setq spreadsheet)
             (car spreadsheet))))

(defmacro cpmi-printer-function (&optional function)
  "3.3 Printer functions

Printer functions convert binary cell values into the print forms that Emacs will display on the screen.

    Various kinds of printer functions
    Configuring what printer function applies
    Standard printer functions
    Local printer functions
    Writing a lambda printer function"
 (declare (&optional function)
           (if (&optional function)
               (setq function 150))
           (car function))
  (declare (&optional function)
           (if (&optional function)
               (setq function)
             (car function))))

(defmacro cpmi-various-kinds (&optional printer-function)
  "3.3.1 Various kinds of printer functions

When configuring what printer function applies (see Configuring what printer function applies), you can enter a printer function as one of the following:

    A format string, like ‘$%.2f’. The result string is right-aligned within the print cell. To get left-alignment, use parentheses: ‘($%.2f)’.
    A printer can also be a one-argument function, the result of which is a string (right-aligned) or list of one string (left-aligned). Such a function can be in turn configured as:
        A lambda expression, for instance:

        (lambda (x)
          (cond
             ((null x) "")
             ((numberp x) (format %.2f x))
             (t (ses-center-span x ?# 'ses-prin1))))

        While typing in a lambda, you can use M-TAB to complete the names of symbols.
        A symbol referring to a standard printer function (see Standard printer functions).
        A symbol referring to a local printer function (see Local printer functions)." 
             (declare (&optional printer-function)
                      (lambda (printer-function)
                        (cond
                         ((null printer-function "")
                          ((numberp printer-function) (format "%.2f" printer-function))
                          (t (setq printer-function 150)))))))
                        

(defsubst  cpmi-configuring-what-printer (&rest function-applies)
  "3.3.2 Configuring what printer function applies

Each cell has a printer. If nil, the column-printer for the cell’s column is used. If that is also nil, the default-printer for the spreadsheet is used.
" 
  (declare (&rest function-applies)
           (lambda (function-applies)
             "
p ¶

    Enter a printer for current cell or range (ses-read-cell-printer).
M-p ¶

    Enter a printer for the current column (ses-read-column-printer).
C-c C-p ¶

    Enter the default printer for the spreadsheet (ses-read-default-printer). 

The ses-read-xxx-printer allows the following commands during editing:

arrow-up
arrow-down

    To browse history: the ses-read-xxx-printer commands have their own minibuffer history, which is preloaded with the set of all printers used in this spreadsheet, plus the standard printers (see Standard printer functions) and the local printers (see Local printer functions). 
TAB

    To complete the local printer symbols, and 
C-h C-p

    To list the local printers in a help buffer."
             [function-applies])
           
 (declare (&optional function-applies)
           (if (&optional function-applies)
               (setq function-applies 150))
           (car function-applies))
 (declare (&optional function-applies)
           (if (&optional function-applies)
               (setq function-applies)
             (car function-applies))))
 (declare (&optional function-applies)
           (if (&optional function-applies)
               (setq function-applies 150))
           (car function-applies)))
             

(defsubst cpmi-standard-printer (&rest functions)
  "3.3.3 Standard printer functions

Except for ses-prin1, the other standard printers are suitable only for cells, not columns or default, because they format the value using the column-printer (or default-printer if nil) and then center the result:
"
  (declare (&rest functions)
           (lambda (functions)
             ["
ses-center ¶

    Just centering.
ses-center-span ¶

    Centering with spill-over to following blank cells.
ses-dashfill ¶

    Centering using dashes (-) instead of spaces.
ses-dashfill-span ¶

    Centering with dashes and spill-over.
ses-tildefill-span ¶

    Centering with tildes (~) and spill-over.
ses-prin1 ¶

    This is the fallback printer, used when calling the configured printer throws some error. 
"]
             [functions])
 (declare (&optional functions)
           (if (&optional functions)
               (setq functions))
           (car functions))
 (declare (&optional functions)
           (if (&optional functions)
               (setq functions)
             (car functions))))
 (declare (&optional functions)
           (if (&optional functions)
               (setq functions 150))
           (car functions)))
           

(defsubst cpmi-local-pinter (&rest functions)
  "3.3.4 Local printer functions

You can define printer function local to a sheet with the command ses-define-local-printer. For instance, define a printer ‘foo’ to %.2f, and then use symbol ‘foo’ as a printer function. Then, if you call again ses-define-local-printer on ‘foo’ to redefine it as %.3f, all the cells using printer ‘foo’ will be reprinted accordingly.

Sometimes there are local printers that you want to define or re-define automatically every time you open a sheet. For instance imagine that you want to define/re-define automatically a local printer euro to display a number like an amount of euros, that is to say number 3.1 would be displayed as 3.10€. To do so in any non read-only SES buffer, you can add some code like this to your .emacs init file:

(defun my-ses-mode-hook ()
  (unless buffer-read-only
    (ses-define-local-printer
     'euro
     (lambda (x)
       (cond
	((null x) "")
	((numberp x) (format %.2f€ x))
	(t (ses-center-span x ?# 'ses-prin1)))))))
(add-hook 'ses-mode-hook 'my-ses-mode-hook)

If you replace command ses-define-local-printer by function ses-define-if-new-local-printer the definition will occur only if a local printer with the same name in not already defined."
        (declare (&rest funtions)
                 (unless functions
                   (setq functions 150
                         (lambda (functions)
                           (cond
                            ((null functions) "")
                            ((numberp functions) (format "%.2f£" functions))
                            (t (setq functions 150)))))))
        (add-hook 'funtions 'functions))


(defsubst cpmi-writing-lambda-printer (&rest val)
  "3.3.5 Writing a lambda printer function

You can write a printer function with a lambda expression taking one argument in two cases:

    when you configure the printer function applying to a cell or column, or
    when you define a local printer function with command ses-define-local-printer. 

When doing so, please take care that the returned value is a string, or a list containing a string, even when the input argument has an unexpected value. Here is an example:

(lambda (val)
   (cond
      ((null val) "")
      ((and (numberp val) (>= val 0)) (format %.1f val))
      (t (ses-center-span val ?# 'ses-prin1))))

This example will:

    When the cell is empty (ie. when val is nil), print an empty string ""
    When the cell value is a non negative number, format the value in fixed-point notation with one decimal after point
    Otherwise, handle the value as erroneous by printing it as an s-expression (using ses-prin1), centered and surrounded by # filling. 

Another precaution to take is to avoid stack overflow due to a printer function calling itself indefinitely. This mistake can happen when you use a local printer as a column printer, and this local printer implicitly calls the current column printer, so it will call itself recursively. Imagine for instance that you want to create some local printer =fill that would center the content of a cell and surround it by equal signs =, and you do it this way:

(lambda (x)
  (cond
   ((null x) "")
   (t (ses-center x 0 ?=))))

Because =fill uses the standard printer ses-center without explicitly passing any printer to it, ses-center will call the current column printer if any, or the spreadsheet default printer otherwise. So using =fill as a column printer will result in a stack overflow in this column. SES does not check for that; you just have to be careful. For instance, re-write =fill like this:

(lambda (x)
  (cond
   ((null x) "")
   ((stringp x) (ses-center x 0 ?=  %s))
   (t (ses-center-span x ?# 'ses-prin1))))

The code above applies the = filling only to strings; it also surrounds the string by one space on each side before filling with = signs. So the string ‘Foo’ will be displayed like ‘=== Foo ===’ in an 11 character wide column. Anything other than an empty cell or a non-string is displayed as an error by using # filling."
   (declare (&rest val)
            (lambda (val)
              (cond
               ((null val) "")
               ((and (numberp val) (>= val 0)) (format "%.1")
                (t (function val))))
              [val])
             (declare (&optional val)
           (if (&optional val)
               (setq val))
           (car val))
 (declare (&optional val)
           (if (&optional val)
               (setq val)
             (car val))))
 (declare (&optional val)
           (if (&optional val)
               (setq val 150))
           (car val)))

                    

(defsubst cpmi-clearing-cells (&rest cell)
  "3.4 Clearing cells

These commands set both formula and printer to nil:

DEL

    Clear cell and move left (ses-clear-cell-backward).
C-d

    Clear cell and move right (ses-clear-cell-forward)." 

   (declare (&rest cell)
            (lambda (cell)
              (cond
               ((null cell) "")
               ((and (numberp cell) (>= cell 0)) (format "%.1")
                (t (function cell))))
              [cell])
             (declare (&optional cell)
           (if (&optional cell)
               (setq cell))
           (car cell))
 (declare (&optional cell)
           (if (&optional cell)
               (setq cell)
             (car cell))))
 (declare (&optional cell)
           (if (&optional cell)
               (setq cell 150))
           (car cell)))

(defsubst cpmi-copy-cut-and (&rest paste)
  "3.5 Copy, cut, and paste

The copy functions work on rectangular regions of cells. You can paste the copies into non-SES buffers to export the print text.

M-w
[copy]
[C-insert]

    Copy the highlighted cells to kill ring and primary clipboard (kill-ring-save).
[drag-mouse-1]

    Mark a region and copy it to kill ring and primary clipboard (mouse-set-region).
[M-drag-mouse-1]

    Mark a region and copy it to kill ring and secondary clipboard (mouse-set-secondary).
C-w
[cut]
[S-delete]

    The cut functions do not actually delete rows or columns—they copy and then clear (ses-kill-override).
C-y
[S-insert]

    Paste from kill ring (yank). The paste functions behave differently depending on the format of the text being inserted:

        When pasting cells that were cut from a SES buffer, the print text is ignored and only the attached formula and printer are inserted; cell references in the formula are relocated unless you use C-u.
        The pasted text overwrites a rectangle of cells whose top left corner is the current cell. If part of the rectangle is beyond the edges of the spreadsheet, you must confirm the increase in spreadsheet size.
        Non-SES text is usually inserted as a replacement formula for the current cell. If the formula would be a symbol, it’s treated as a string unless you use C-u. Pasted formulas with syntax errors are always treated as strings. 

[paste]

    Paste from primary clipboard or kill ring (clipboard-yank).
[mouse-2]

    Set point and paste from primary clipboard (mouse-yank-at-click).
[M-mouse-2]

    Set point and paste from secondary clipboard (mouse-yank-secondary).
M-y

    Immediately after a paste, you can replace the text with a preceding element from the kill ring (ses-yank-pop). Unlike the standard Emacs yank-pop, the SES version uses undo to delete the old yank. This doesn’t make any difference?" 
   (declare (&rest paste)
            (lambda (paste)
              (cond
               ((null paste) "")
               ((and (numberp paste) (>= paste 0)) (format "%.1")
                (t (function paste))))
              [cell])
             (declare (&optional paste)
           (if (&optional paste)
               (setq paste))
           (car paste))
 (declare (&optional paste)
           (if (&optional paste)
               (setq paste)
             (car paste))))
 (declare (&optional paste)
           (if (&optional paste)
               (setq paste 150))
           (car paste)))

(defmacro cpmi-customizing (&rest ses)
  "3.6 Customizing SES

By default, a newly-created spreadsheet has 1 row and 1 column. The column width is 7 and the default printer is ‘%.7g’. Each of these can be customized. Look in group ses.

After entering a cell value, point normally moves right to the next cell. You can customize ses-after-entry-functions to move left or up or down. For diagonal movement, select two functions from the list.

ses-jump-cell-name-function is a customizable variable by default set to the upcase function. This function is called when you pass a cell name to the ses-jump command (j), it changes the entered cell name to that where to jump. The default setting upcase allows you to enter the cell name in low case. Another use of ses-jump-cell-name-function could be some internationalization to convert non latin characters into latin equivalents to name the cell. Instead of a cell name, the function may return cell coordinates in the form of a cons, for instance (0 . 0) for cell A1, (1 . 0) for cell A2, etc.

ses-jump-prefix-function is a customizable variable by default set to the ses-jump-prefix function. This function is called when you give a prefix argument to the ses-jump command (j). It returns a cell name or cell coordinates corresponding to the prefix argument. Cell coordinates are in the form of a cons, for instance (1 . 0) for cell A2. The default setting ses-jump-prefix will number cells left to right and then top down, so assuming a 4x3 spreadsheet prefix argument 0 jumps to cell A1, prefix argument 2 jumps to C1, prefix argument 3 jumps to A2, etc.

ses-mode-hook is a normal mode hook (list of functions to execute when starting SES mode for a buffer).

The variable safe-functions is a list of possibly-unsafe functions to be treated as safe when analyzing formulas and printers. See Virus protection. Before customizing safe-functions, think about how much you trust the person who’s suggesting this change. The value t turns off all anti-virus protection. A list-of-functions value might enable a gee whiz spreadsheet, but it also creates trapdoors in your anti-virus armor. In order for virus protection to work, you must always press n when presented with a virus warning, unless you understand what the questionable code is trying to do. Do 
not listen to those who tell you to customize enable-local-eval—this variable is for people who don’t wear safety belts!"
   (declare (&rest ses)
            (lambda (ses)
              (cond
               ((null ses) "")
               ((and (numberp ses) (>= ses 0)) (format "%.1")
                (t (function ses))))
              [cell])
             (declare (&optional ses)
           (if (&optional ses)
               (setq ses))
           (car ses))
 (declare (&optional ses)
           (if (&optional ses)
               (setq ses)
             (car ses))))
 (declare (&optional ses)
           (if (&optional ses)
               (setq ses 150))
           (car ses)))


(defmacro cpmi-advanced-features (&optional features)
  "4 Advanced Features

C-c M-C-h

    (ses-set-header-row). The header line at the top of the SES window normally shows the column letter for each column. You can set it to show a copy of some row, such as a row of column titles, so that row will always be visible. Default is to set the current row as the header; use C-u to prompt for header row. Set the header to row 0 to show column letters again. 
[header-line mouse-3]

    Pops up a menu to set the current row as the header, or revert to column letters. 
M-x ses-rename-cell ¶

    Rename a cell from a standard A1-like name to any string that can be a valid local variable name (See also Nonrelocatable references). 
M-x ses-repair-cell-reference-all ¶

    When you interrupt a cell formula update by clicking C-g, then the cell reference link may be broken, which will jeopardize automatic cell update when any other cell on which it depends is changed. To repair that use function ses-repair-cell-reference-all 

    The print area
    Ranges in formulas
    Sorting by column
    Standard formula functions
    More on cell printing
    Import and export
    Virus protection
    Spreadsheets with details and summary"
  (declare (&rest features)
           (lambda (features)
             (cond
              ((function features) (>= features 0)
               ((t (setq features 150))))
              (car features))
             ["4 advanced features"]
             [features])
           (declare (&rest features)
                    ((function features) (>= features 0)
                     ((t (setq features 150))))))
  (declare (&rest features)
           (lambda (features)
             (cond
              ((function features) (>= features 0)
               ((t (setq features 150))))
              (car features))
             ["4 advanced features"]
             [features])
           (declare (&rest features)
                    ((function features) (>= features 0)
                     ((t (setq features 150)))))))

           
(defmacro cpmi-print-area (&rest area)
  "4.1 The print area

A SES file consists of a print area and a data area. Normally the buffer is narrowed to show only the print area. The print area is read-only except for special SES commands; it contains cell values formatted by printer functions. The data area records the formula and printer functions, etc.

C-x n w

    Show print and data areas (widen).
C-c C-n

    Show only print area (ses-renarrow-buffer).
S-C-l
M-C-l

    Recreate print area by reevaluating printer functions for all cells (ses-reprint-all)." 
  (declare (&rest area)
           (lambda (area)
             (cond
              ((function area) (>= area 0)
               ((t (setq area 150))))
              (car area))
             ["4 advanced features"]
             [area])
           (declare (&rest area)
                    ((function area) (>= area 0)
                     ((t (setq area 150))))))
  (declare (&rest area)
           (lambda (area)
             (cond
              ((function area) (>= area 0)
               ((t (setq area 150))))
              (car area))
             ["4 advanced features"]
             [area])
           (declare (&rest area)
                    ((function area) (>= area 0)
                     ((t (setq area 150)))))))

(defmacro cpmi-ranges-formulas (&rest formulas)
  "4.2 Ranges in formulas

A formula like

(+ A1 A2 A3)

is the sum of three specific cells. If you insert a new second row, the formula becomes

(+ A1 A3 A4)

and the new row is not included in the sum.

The macro (ses-range from to) evaluates to a list of the values in a rectangle of cells. If your formula is

(apply '+ (ses-range A1 A3))

and you insert a new second row, it becomes

(apply '+ (ses-range A1 A4))

and the new row is included in the sum.

While entering or editing a formula in the minibuffer, you can select a range in the spreadsheet (using mouse or keyboard), then paste a representation of that range into your formula. Suppose you select A1-C1:

[S-mouse-3]

    Inserts A1 B1 C1 (ses-insert-range-click)
C-c C-r

    Keyboard version (ses-insert-range).
[C-S-mouse-3]

    Inserts (ses-range A1 C1) (ses-insert-ses-range-click).
C-c C-s

    Keyboard version (ses-insert-ses-range). 

If you delete the from or to cell for a range, the nearest still-existing cell is used instead. If you delete the entire range, the formula relocator will delete the ses-range from the formula.

If you insert a new row just beyond the end of a one-column range, or a new column just beyond a one-row range, the new cell is included in the range. New cells inserted just before a range are not included.

Flags can be added to ses-range immediately after the to cell.

!

    Empty cells in range can be removed by adding the ! flag. An empty cell is a cell the value of which is one of symbols nil or *skip*. For instance (ses-range A1 A4 !) will do the same as (list A1 A3) when cells A2 and A4 are empty. 
_

    Empty cell values are replaced by the argument following flag _, or 0 when flag _ is last in argument list. For instance (ses-range A1 A4 _ empty) will do the same as (list A1 empty A3 empty) when cells A2 and A4 are empty. Similarly, (ses-range A1 A4 _ ) will do the same as (list A1 0 A3 0). 
>v

    When order matters, list cells by reading cells row-wise from top left to bottom right. This flag is provided for completeness only as it is the default reading order. 
<v

    List cells by reading cells row-wise from top right to bottom left. 
v>

    List cells by reading cells column-wise from top left to bottom right. 
v<

    List cells by reading cells column-wise from top right to bottom left. 
v

    A short hand for v>. 
^

    A short hand for ^>. 
>

    A short hand for >v. 
<

    A short hand for >^. 
*

    Instead of listing cells, it makes a Calc vector or matrix of it (see GNU Emacs Calc Manual). If the range contains only one row or one column a vector is made, otherwise a matrix is made. 
*2

    Same as * except that a matrix is always made even when there is only one row or column in the range. 
*1

    Same as * except that a vector is always made even when there is only one row or column in the range, that is to say the corresponding matrix is flattened." 
  (declare (&rest formulas)
           (lambda (formulas)
             (cond
              ((function formulas) (>= farmulas 0)
               ((t (setq formulas 150))))
              (car formulas))
             ["4 advanced features"]
             [formulas])
           (declare (&rest formulas)
                    ((function formulas) (>= formulas 0)
                     ((t (setq formulas 150))))))
  (declare (&rest formulas)
           (lambda (formulas)
             (cond
              ((function formulas) (>= formulas 0)
               ((t (setq formulas 150))))
              (car formulas))
             ["4 advanced features"]
             [formulas])
           (declare (&rest formulas)
                    ((function formulas) (>= formulas 0)
                     ((t (setq formulas 150)))))))

(defmacro cpmi-sorting-column (&rest column)
  "4.3 Sorting by column

C-c M-C-s

    Sort the cells of a range using one of the columns (ses-sort-column). The rows (or partial rows if the range doesn’t include all columns) are rearranged so the chosen column will be in order.
[header-line mouse-2]

    The easiest way to sort is to click mouse-2 on the chosen column’s header row (ses-sort-column-click). 

The sort comparison uses string<, which works well for right-justified numbers and left-justified strings.

With prefix arg, sort is in descending order.

Rows are moved one at a time, with relocation of formulas. This works well if formulas refer to other cells in their row, not so well for formulas that refer to other rows in the range or to cells outside the range."   (declare (&rest column)
           (lambda (column)
             (cond
              ((function column) (>= column 0)
               ((t (setq column 150))))
              (car column))
             ["4 advanced features"]
             [column])
           (declare (&rest column)
                    ((function column) (>= column 0)
                     ((t (setq column 150))))))
  (declare (&rest column)
           (lambda (column)
             (cond
              ((function column) (>= column 0)
               ((t (setq column 150))))
              (car column))
             ["4 advanced features"]
             [column])
           (declare (&rest column)
                    ((function column) (>= column 0)
                     ((t (setq column 150)))))))

(defmacro cpmi-standard-fomula (&rest functions)
  "4.4 Standard formula functions

Oftentimes you want a calculation to exclude the blank cells. Here are some useful functions to call from your formulas:

(ses-delete-blanks &rest args)

    Returns a list from which all blank cells (value is either nil or ’*skip*) have been deleted. Order of args is reverted. Please note that ses-range has a ! modifier that allows to remove blanks, so it is possible to write:

    (ses-range A1 A5 !)

    instead of

    (apply 'ses-delete-blanks (ses-range A1 A5 <))

(ses+ &rest args)

    Sum of non-blank arguments.
(ses-average list)

    Average of non-blank elements in list. Here the list is passed as a single argument, since you’ll probably use it with ses-range." 
   (declare (&rest functions)
           (lambda (functions)
             (cond
              ((function functions) (>= functions 0)
               ((t (setq functions 150))))
              (car functions))
             ["4 advanced features"]
             [functions])
           (declare (&rest functions)
                    ((function functions) (>= functions 0)
                     ((t (setq functions 150))))))
  (declare (&rest functions)
           (lambda (functions)
             (cond
              ((function functions) (>= functions 0)
               ((t (setq functions 150))))
              (car functions))
             ["4 advanced features"]
             [functions])
           (declare (&rest functions)
                    ((function functions) (>= functions 0)
                     ((t (setq functions 150)))))))

(defmacro cpmi-one-cell-printing (&rest printing)
  "4.5 More on cell printing

Special cell values:

    nil prints the same as , but allows previous cell to spill over.
    ’*skip* replaces nil when the previous cell actually does spill over; nothing is printed for it.
    ’*error* indicates that the formula signaled an error instead of producing a value: the print cell is filled with hash marks (#). 

If the result from the printer function is too wide for the cell and the following cell is nil, the result will spill over into the following cell. Very wide results can spill over several cells. If the result is too wide for the available space (up to the end of the row or the next non-nil cell), the result is truncated if the cell’s value is a string, or replaced with hash marks otherwise.

SES could get confused by printer results that contain newlines or tabs, so these are replaced with question marks.

t

    Confine a cell to its own column (ses-truncate-cell). This allows you to move point to a rightward cell that would otherwise be covered by a spill-over. If you don’t change the rightward cell, the confined cell will spill over again the next time it is reprinted.
c

    When applied to a single cell, this command displays in the echo area any formula error or printer error that occurred during recalculation/reprinting (ses-recalculate-cell). You can use this to undo the effect of t. 

When a printer function signals an error, the fallback printer ses-prin1 is substituted. This is useful when your column printer is numeric-only and you use a string as a cell value. Note that the standard default printer is ‘%.7g’ which is numeric-only, so cells that are empty of contain strings will use the fallback printer. c on such cells will display Format specifier doesn’t match argument type."
   (declare (&rest printing)
           (lambda (printing)
             (cond
              ((function printing) (>= printing 0)
               ((t (setq printing 150))))
              (car printing))
             ["4 advanced features"]
             [printing])
           (declare (&rest printing)
                    ((function printing) (>= printing 0)
                     ((t (setq printing 150))))))
  (declare (&rest printing)
           (lambda (printing)
             (cond
              ((function printing) (>= printing 0)
               ((t (setq printing 150))))
              (car printing))
             ["4 advanced features"]
             [printing])
           (declare (&rest printing)
                    ((function printing) (>= printing 0)
                     ((t (setq printing 150)))))))

(defmacro import-and-export (&rest export)
  "4.6 Import and export

x t

    Export a range of cells as tab-separated values (ses-export-tsv). 
x T

    Export a range of cells as tab-separated formulas (ses-export-tsf). 

The exported text goes to the kill ring; you can paste it into another buffer. Columns are separated by tabs, rows by newlines.

To import text, use any of the yank commands where the text to paste contains tabs and/or newlines. Imported formulas are not relocated."
     (declare (&rest export)
           (lambda (export)
             (cond
              ((function export) (>= export 0)
               ((t (setq export 150))))
              (car export))
             ["4 advanced features"]
             [export])
           (declare (&rest export)
                    ((function export) (>= export 0)
                     ((t (setq export 150))))))
  (declare (&rest export)
           (lambda (export)
             (cond
              ((function export) (>= export 0)
               ((t (setq export 150))))
              (car export))
             ["4 advanced features"]
             [export])
           (declare (&rest export)
                    ((function export) (>= export 0)
                     ((t (setq export 150)))))))

(defmacro cpim-import (&rest import)
  "4.6 Import and export

x t

    Export a range of cells as tab-separated values (ses-export-tsv). 
x T

    Export a range of cells as tab-separated formulas (ses-export-tsf). 

The exported text goes to the kill ring; you can paste it into another buffer. Columns are separated by tabs, rows by newlines.

To import text, use any of the yank commands where the text to paste contains tabs and/or newlines. Imported formulas are not relocated."
       (declare (&rest import)
           (lambda (import)
             (cond
              ((function import) (>= import 0)
               ((t (setq import 150))))
              (car import))
             ["4 advanced features"]
             [import])
           (declare (&rest import)
                    ((function import) (>= import 0)
                     ((t (setq import 150))))))
  (declare (&rest import)
           (lambda (import)
             (cond
              ((function import) (>= import 0)
               ((t (setq import 150))))
              (car import))
             ["4 advanced features"]
             [import])
           (declare (&rest import)
                    ((function import) (>= import 0)
                     ((t (setq import 150)))))))

(defmacro cpmi-virus-protection (&rest protection)
  "4.7 Virus protection

Whenever a formula or printer is read from a file or is pasted into the spreadsheet, it receives a “needs safety check” marking. Later, when the formula or printer is evaluated for the first time, it is checked for safety using the unsafep predicate; if found to be “possibly unsafe”, the questionable formula or printer is displayed and you must press Y to approve it or N to use a substitute. The substitute always signals an error.

Formulas or printers that you type in are checked immediately for safety. If found to be possibly unsafe and you press N to disapprove, the action is canceled and the old formula or printer will remain.

Besides viruses (which try to copy themselves to other files), unsafep can also detect all other kinds of Trojan horses, such as spreadsheets that delete files, send email, flood Web sites, alter your Emacs settings, etc.

Generally, spreadsheet formulas and printers are simple things that don’t need to do any fancy computing, so all potentially-dangerous parts of the Emacs Lisp environment can be excluded without cramping your style as a formula-writer. See the documentation in unsafep.el for more info on how Lisp forms are classified as safe or unsafe."
         (declare (&rest protection)
           (lambda (protection)
             (cond
              ((function protection) (>= protection 0)
               ((t (setq protection 150))))
              (car protection))
             ["4 advanced features"]
             [protection])
           (declare (&rest protection)
                    ((function protection) (>= protection 0)
                     ((t (setq protection 150))))))
  (declare (&rest protection)
           (lambda (protection)
             (cond
              ((function protection) (>= protection 0)
               ((t (setq protection 150))))
              (car protection))
             ["4 advanced features"]
             [protection])
           (declare (&rest protection)
                    ((function protection) (>= protection 0)
                     ((t (setq proection 150)))))))

(defmacro cpmi-spreadsheets-details (&rest summary)
  "4.8 Spreadsheets with details and summary

A common organization for spreadsheets is to have a bunch of “detail” rows, each perhaps describing a transaction, and then a set of “summary” rows that each show reduced data for some subset of the details. SES supports this organization via the ses-select function.

(ses-select fromrange test torange)

    Returns a subset of torange. For each member in fromrange that is equal to test, the corresponding member of torange is included in the result. 

Example of use:

(ses-average (ses-select (ses-range A1 A5) 'Smith (ses-range B1 B5)))

This computes the average of the B column values for those rows whose A column value is the symbol ’Smith.

Arguably one could specify only fromrange plus to-row-offset and to-column-offset. The torange is stated explicitly to ensure that the formula will be recalculated if any cell in either range is changed.

File etc/ses-example.el in the Emacs distribution is an example of a details-and-summary spreadsheet."
           (declare (&rest summary)
           (lambda (summary)
             (cond
              ((function summary) (>= summary 0)
               ((t (setq summary 150))))
              (car summary))
             ["4 advanced features"]
             [summary])
           (declare (&rest summary)
                    ((function summary) (>= summary 0)
                     ((t (setq summary 150))))))
  (declare (&rest summary)
           (lambda (summary)
             (cond
              ((function summary) (>= summary 0)
               ((t (setq summary 150))))
              (car summary))
             ["4 advanced features"]
             [summary])
           (declare (&rest summary)
                    ((function summary) (>= summary 0)
                     ((t (setq summary 150)))))))

(defmacro cpmi-gurus (&rest gurus)
  "5 For Gurus

    Deferred updates
    Nonrelocatable references
    The data area
    Buffer-local variables in spreadsheets
    Uses of defadvice in SES"
           (declare (&rest gurus)
           (lambda (gurus)
             (cond
              ((function gurus) (>= gurus 0)
               ((t (setq gurus 150))))
              (car gurus))
             ["4 advanced features"]
             [gurus])
           (declare (&rest gurus)
                    ((function gurus) (>= gurus 0)
                     ((t (setq gurus 150))))))
  (declare (&rest gurus)
           (lambda (gurus)
             (cond
              ((function gurus) (>= gurus 0)
               ((t (setq gurus 150))))
              (car gurus))
             ["4 advanced features"]
             [gurus])
           (declare (&rest gurus)
                    ((function gurus) (>= gurus 0)
                     ((t (setq gurus 150)))))))

(defmacro cpmi-deferred-updates (&rest updates)
  "5.1 Deferred updates

To save time by avoiding redundant computations, cells that need recalculation due to changes in other cells are added to a set. At the end of the command, each cell in the set is recalculated once. This can create a new set of cells that need recalculation. The process is repeated until either the set is empty or it stops changing (due to circular references among the cells). In extreme cases, you might see progress messages of the form “Recalculating... (nnn cells left)”. If you interrupt the calculation using C-g, the spreadsheet will be left in an inconsistent state, so use C-_ or C-c C-l to fix it.

To save even more time by avoiding redundant writes, cells that have changes are added to a set instead of being written immediately to the data area. Each cell in the set is written once, at the end of the command. If you change vast quantities of cells, you might see a progress message of the form “Writing... (nnn cells left)”. These deferred cell-writes cannot be interrupted by C-g, so you’ll just have to wait.

SES uses run-with-idle-timer to move the cell underline when Emacs will be scrolling the buffer after the end of a command, and also to narrow and underline after C-x C-v. This is visible as a momentary glitch after C-x C-v and certain scrolling commands. You can type ahead without worrying about the glitch. "
             (declare (&rest updates)
           (lambda (upates)
             (cond
              ((function updates) (>= upates 0)
               ((t (setq upates 150))))
              (car upates))
             ["4 advanced features"]
             [updates])
           (declare (&rest updates)
                    ((function updates) (>= updates 0)
                     ((t (setq updates 150))))))
  (declare (&rest updates)
           (lambda (updates)
             (cond
              ((function updates) (>= updates 0)
               ((t (setq updates 150))))
              (car updates))
             ["4 advanced features"]
             [updates])
           (declare (&rest updates)
                    ((function updates) (>= updates 0)
                     ((t (setq updates 150)))))))

(defmacro cpmi-nonrelocatable-references (&rest references)
  "5.2 Nonrelocatable references

C-y relocates all cell-references in a pasted formula, while C-u C-y relocates none of the cell-references. What about mixed cases?

The best way is to rename cells that you do not want to be relocatable by using ses-rename-cell. Cells that do not have an A1-like name style are not relocated on yank. Using this method, the concerned cells won’t be relocated whatever formula they appear in. Please note however that when a formula contains some range (ses-range cell1 cell2) then in the yanked formula each range bound cell1 and cell2 are relocated, or not, independently, depending on whether they are A1-like or renamed.

An alternative method is to use

(symbol-value 'B3)

to make an absolute reference. The formula relocator skips over quoted things, so this will not be relocated when pasted or when rows/columns are inserted/deleted. However, B3 will not be recorded as a dependency of this cell, so this cell will not be updated automatically when B3 is changed, this is why using ses-rename-cell is most of the time preferable.

The variables row and col are dynamically bound while a cell formula is being evaluated. You can use

(ses-cell-value row 0)

to get the value from the leftmost column in the current row. This kind of dependency is also not recorded. "
               (declare (&rest references)
           (lambda (references)
             (cond
              ((function references) (>= references 0)
               ((t (setq references 150))))
              (car references))
             ["4 advanced features"]
             [references])
           (declare (&rest references)
                    ((function references) (>= refrences 0)
                     ((t (setq referneces 150))))))
  (declare (&rest references)
           (lambda (references)
             (cond
              ((function references) (>= references 0)
               ((t (setq references 150))))
              (car references))
             ["4 advanced features"]
             [references])
           (declare (&rest references)
                    ((function references) (>= references 0)
                     ((t (setq references 150)))))))

(defmacro cpmi-data-area (&rest area)
  "5.3 The data area

Begins with an 014 character, followed by sets of cell-definition macros for each row, followed by the set of local printer definitions, followed by column-widths, column-printers, default-printer, and header-row. Then there’s the global parameters (file-format ID, row count, column count, local printer count) and the local variables (specifying SES mode for the buffer, etc.).

When a SES file is loaded, first the global parameters are loaded, then the entire data area is evaled, and finally the local variables are processed.

You can edit the data area, but don’t insert or delete any newlines except in the local-variables part, since SES locates things by counting newlines. Use C-x C-e at the end of a line to install your edits into the spreadsheet data structures (this does not update the print area, use, e.g., C-c C-l for that).

The data area is maintained as an image of spreadsheet data structures that area stored in buffer-local variables. If the data area gets messed up, you can try reconstructing the data area from the data structures:

C-c M-C-l

    (ses-reconstruct-all)."
  
               (declare (&rest area)
           (lambda (area)
             (cond
              ((function area) (>= area 0)
               ((t (setq area 150))))
              (car area))
             ["4 advanced features"]
             [area])
           (declare (&rest area)
                    ((function area) (>= area 0)
                     ((t (setq area 150))))))
  (declare (&rest area)
           (lambda (area)
             (cond
              ((function area) (>= area 0)
               ((t (setq area 150))))
              (car area))
             ["4 advanced features"]
             [area])
           (declare (&rest area)
                    ((function area) (>= area 0)
                     ((t (setq area 150)))))))


(defmacro cpmi-buffer-local (&rest spreadsheets)
  "5.4 Buffer-local variables in spreadsheets

You can add additional local variables to the list at the bottom of the data area, such as hidden constants you want to refer to in your formulas.

You can override the variable ses--symbolic-formulas to be a list of symbols (as parenthesized strings) to show as completions for the ' command. This initial completions list is used instead of the actual set of symbols-as-formulas in the spreadsheet.

For an example of this, see file etc/ses-example.ses.

If (for some reason) you want your formulas or printers to save data into variables, you must declare these variables as buffer-locals in order to avoid a virus warning.

You can define functions by making them values for the fake local variable eval. Such functions can then be used in your formulas and printers, but usually each eval is presented to the user during file loading as a potential virus. This can get annoying.

You can define functions in your .emacs file. Other people can still read the print area of your spreadsheet, but they won’t be able to recalculate or reprint anything that depends on your functions. To avoid virus warnings, each function used in a formula needs

(put 'your-function-name 'safe-function t)"
  
               (declare (&rest spreadsheets)
           (lambda (spreadsheets)
             (cond
              ((function spreadsheets) (>= spreadsheets 0)
               ((t (setq spreadsheets 150))))
              (car spreadsheets))
             ["4 advanced features"]
             [spreadsheets])
           (declare (&rest spreadsheets)
                    ((function spreadsheets) (>= spreadsheets 0)
                     ((t (setq spreadsheets 150))))))
  (declare (&rest spreadsheets)
           (lambda (spreadsheets)
             (cond
              ((function spreadsheets) (>= spreasheets 0)
               ((t (setq spreadsheets 150))))
              (car spreadsheets))
             ["4 advanced features"]
             [spreadsheets])
           (declare (&rest spreadsheets)
                    ((function spreadsheets) (>= spreadsheets 0)
                     ((t (setq spreadsheets 150)))))))

(defmacro cpmi-uses-defadvices (&rest ses)
  "5.5 Uses of defadvice in SES

undo-more

    Defines a new undo element format (fun . args), which means “undo by applying fun to args”. For spreadsheet buffers, it allows undos in the data area even though that’s outside the narrowing.
copy-region-as-kill

    When copying from the print area of a spreadsheet, treat the region as a rectangle and attach each cell’s formula and printer as ’ses properties.
yank

    When yanking into the print area of a spreadsheet, first try to yank as cells (if the yank text has ’ses properties), then as tab-separated formulas, then (if all else fails) as a single formula for the current cell. "
  
               (declare (&rest ses)
           (lambda (ses)
             (cond
              ((function ses) (>= ses 0)
               ((t (setq ses 150))))
              (car ses))
             ["4 advanced features"]
             [ses])
           (declare (&rest ses)
                    ((function ses) (>= ses 0)
                     ((t (setq ses 150))))))
  (declare (&rest ses)
           (lambda (ses)
             (cond
              ((function ses) (>= ses 0)
               ((t (setq ses 150))))
              (car ses))
             ["4 advanced features"]
             [ses])
           (declare (&rest ses)
                    ((function ses) (>= ses 0)
                     ((t (setq ses 150)))))))


(defgroup cpmi-acknowledgments nil
  "Acknowledgments

Coding by:

    Jonathan Yavner, Stefan Monnier, Shigeru Fukaya 

Texinfo manual by:

    Jonathan Yavner, Brad Collins 

Ideas from:

    Christoph Conrad, CyberBob, Syver Enstad, Ami Fischman, Thomas Gehrlein, Chris F.A. Johnson, Yusong Li, Juri Linkov, Harald Maier, Alan Nash, François Pinard, Pedro Pinto, Stefan Reichör, Oliver Scholz, Richard M. Stallman, Luc Teirlinck, J. Otto Tennant, Jean-Philippe Theberge"
  :group 'cpmi
  :version "27.1")


(defgroup cpmi-license-append nil
  "Appendix A GNU Free Documentation License
Version 1.3, 3 November 2008

Copyright © 2000, 2001, 2002, 2007, 2008 Free Software Foundation, Inc.
https://fsf.org/

Everyone is permitted to copy and distribute verbatim copies
of this license document, but changing it is not allowed.

    PREAMBLE

    The purpose of this License is to make a manual, textbook, or other functional and useful document free in the sense of freedom: to assure everyone the effective freedom to copy and redistribute it, with or without modifying it, either commercially or noncommercially. Secondarily, this License preserves for the author and publisher a way to get credit for their work, while not being considered responsible for modifications made by others.

    This License is a kind of “copyleft”, which means that derivative works of the document must themselves be free in the same sense. It complements the GNU General Public License, which is a copyleft license designed for free software.

    We have designed this License in order to use it for manuals for free software, because free software needs free documentation: a free program should come with manuals providing the same freedoms that the software does. But this License is not limited to software manuals; it can be used for any textual work, regardless of subject matter or whether it is published as a printed book. We recommend this License principally for works whose purpose is instruction or reference.
    APPLICABILITY AND DEFINITIONS

    This License applies to any manual or other work, in any medium, that contains a notice placed by the copyright holder saying it can be distributed under the terms of this License. Such a notice grants a world-wide, royalty-free license, unlimited in duration, to use that work under the conditions stated herein. The “Document”, below, refers to any such manual or work. Any member of the public is a licensee, and is addressed as “you”. You accept the license if you copy, modify or distribute the work in a way requiring permission under copyright law.

    A “Modified Version” of the Document means any work containing the Document or a portion of it, either copied verbatim, or with modifications and/or translated into another language.

    A “Secondary Section” is a named appendix or a front-matter section of the Document that deals exclusively with the relationship of the publishers or authors of the Document to the Document’s overall subject (or to related matters) and contains nothing that could fall directly within that overall subject. (Thus, if the Document is in part a textbook of mathematics, a Secondary Section may not explain any mathematics.) The relationship could be a matter of historical connection with the subject or with related matters, or of legal, commercial, philosophical, ethical or political position regarding them.

    The “Invariant Sections” are certain Secondary Sections whose titles are designated, as being those of Invariant Sections, in the notice that says that the Document is released under this License. If a section does not fit the above definition of Secondary then it is not allowed to be designated as Invariant. The Document may contain zero Invariant Sections. If the Document does not identify any Invariant Sections then there are none.

    The “Cover Texts” are certain short passages of text that are listed, as Front-Cover Texts or Back-Cover Texts, in the notice that says that the Document is released under this License. A Front-Cover Text may be at most 5 words, and a Back-Cover Text may be at most 25 words.

    A “Transparent” copy of the Document means a machine-readable copy, represented in a format whose specification is available to the general public, that is suitable for revising the document straightforwardly with generic text editors or (for images composed of pixels) generic paint programs or (for drawings) some widely available drawing editor, and that is suitable for input to text formatters or for automatic translation to a variety of formats suitable for input to text formatters. A copy made in an otherwise Transparent file format whose markup, or absence of markup, has been arranged to thwart or discourage subsequent modification by readers is not Transparent. An image format is not Transparent if used for any substantial amount of text. A copy that is not “Transparent” is called “Opaque”.

    Examples of suitable formats for Transparent copies include plain ASCII without markup, Texinfo input format, LaTeX input format, SGML or XML using a publicly available DTD, and standard-conforming simple HTML, PostScript or PDF designed for human modification. Examples of transparent image formats include PNG, XCF and JPG. Opaque formats include proprietary formats that can be read and edited only by proprietary word processors, SGML or XML for which the DTD and/or processing tools are not generally available, and the machine-generated HTML, PostScript or PDF produced by some word processors for output purposes only.

    The “Title Page” means, for a printed book, the title page itself, plus such following pages as are needed to hold, legibly, the material this License requires to appear in the title page. For works in formats which do not have any title page as such, “Title Page” means the text near the most prominent appearance of the work’s title, preceding the beginning of the body of the text.

    The “publisher” means any person or entity that distributes copies of the Document to the public.

    A section “Entitled XYZ” means a named subunit of the Document whose title either is precisely XYZ or contains XYZ in parentheses following text that translates XYZ in another language. (Here XYZ stands for a specific section name mentioned below, such as “Acknowledgements”, “Dedications”, “Endorsements”, or “History”.) To “Preserve the Title” of such a section when you modify the Document means that it remains a section “Entitled XYZ” according to this definition.

    The Document may include Warranty Disclaimers next to the notice which states that this License applies to the Document. These Warranty Disclaimers are considered to be included by reference in this License, but only as regards disclaiming warranties: any other implication that these Warranty Disclaimers may have is void and has no effect on the meaning of this License.
    VERBATIM COPYING

    You may copy and distribute the Document in any medium, either commercially or noncommercially, provided that this License, the copyright notices, and the license notice saying this License applies to the Document are reproduced in all copies, and that you add no other conditions whatsoever to those of this License. You may not use technical measures to obstruct or control the reading or further copying of the copies you make or distribute. However, you may accept compensation in exchange for copies. If you distribute a large enough number of copies you must also follow the conditions in section 3.

    You may also lend copies, under the same conditions stated above, and you may publicly display copies.
    COPYING IN QUANTITY

    If you publish printed copies (or copies in media that commonly have printed covers) of the Document, numbering more than 100, and the Document’s license notice requires Cover Texts, you must enclose the copies in covers that carry, clearly and legibly, all these Cover Texts: Front-Cover Texts on the front cover, and Back-Cover Texts on the back cover. Both covers must also clearly and legibly identify you as the publisher of these copies. The front cover must present the full title with all words of the title equally prominent and visible. You may add other material on the covers in addition. Copying with changes limited to the covers, as long as they preserve the title of the Document and satisfy these conditions, can be treated as verbatim copying in other respects.

    If the required texts for either cover are too voluminous to fit legibly, you should put the first ones listed (as many as fit reasonably) on the actual cover, and continue the rest onto adjacent pages.

    If you publish or distribute Opaque copies of the Document numbering more than 100, you must either include a machine-readable Transparent copy along with each Opaque copy, or state in or with each Opaque copy a computer-network location from which the general network-using public has access to download using public-standard network protocols a complete Transparent copy of the Document, free of added material. If you use the latter option, you must take reasonably prudent steps, when you begin distribution of Opaque copies in quantity, to ensure that this Transparent copy will remain thus accessible at the stated location until at least one year after the last time you distribute an Opaque copy (directly or through your agents or retailers) of that edition to the public.

    It is requested, but not required, that you contact the authors of the Document well before redistributing any large number of copies, to give them a chance to provide you with an updated version of the Document.
    MODIFICATIONS

    You may copy and distribute a Modified Version of the Document under the conditions of sections 2 and 3 above, provided that you release the Modified Version under precisely this License, with the Modified Version filling the role of the Document, thus licensing distribution and modification of the Modified Version to whoever possesses a copy of it. In addition, you must do these things in the Modified Version:
        Use in the Title Page (and on the covers, if any) a title distinct from that of the Document, and from those of previous versions (which should, if there were any, be listed in the History section of the Document). You may use the same title as a previous version if the original publisher of that version gives permission.
        List on the Title Page, as authors, one or more persons or entities responsible for authorship of the modifications in the Modified Version, together with at least five of the principal authors of the Document (all of its principal authors, if it has fewer than five), unless they release you from this requirement.
        State on the Title page the name of the publisher of the Modified Version, as the publisher.
        Preserve all the copyright notices of the Document.
        Add an appropriate copyright notice for your modifications adjacent to the other copyright notices.
        Include, immediately after the copyright notices, a license notice giving the public permission to use the Modified Version under the terms of this License, in the form shown in the Addendum below.
        Preserve in that license notice the full lists of Invariant Sections and required Cover Texts given in the Document’s license notice.
        Include an unaltered copy of this License.
        Preserve the section Entitled “History”, Preserve its Title, and add to it an item stating at least the title, year, new authors, and publisher of the Modified Version as given on the Title Page. If there is no section Entitled “History” in the Document, create one stating the title, year, authors, and publisher of the Document as given on its Title Page, then add an item describing the Modified Version as stated in the previous sentence.
        Preserve the network location, if any, given in the Document for public access to a Transparent copy of the Document, and likewise the network locations given in the Document for previous versions it was based on. These may be placed in the “History” section. You may omit a network location for a work that was published at least four years before the Document itself, or if the original publisher of the version it refers to gives permission.
        For any section Entitled “Acknowledgements” or “Dedications”, Preserve the Title of the section, and preserve in the section all the substance and tone of each of the contributor acknowledgements and/or dedications given therein.
        Preserve all the Invariant Sections of the Document, unaltered in their text and in their titles. Section numbers or the equivalent are not considered part of the section titles.
        Delete any section Entitled “Endorsements”. Such a section may not be included in the Modified Version.
        Do not retitle any existing section to be Entitled “Endorsements” or to conflict in title with any Invariant Section.
        Preserve any Warranty Disclaimers. 

    If the Modified Version includes new front-matter sections or appendices that qualify as Secondary Sections and contain no material copied from the Document, you may at your option designate some or all of these sections as invariant. To do this, add their titles to the list of Invariant Sections in the Modified Version’s license notice. These titles must be distinct from any other section titles.

    You may add a section Entitled “Endorsements”, provided it contains nothing but endorsements of your Modified Version by various parties—for example, statements of peer review or that the text has been approved by an organization as the authoritative definition of a standard.

    You may add a passage of up to five words as a Front-Cover Text, and a passage of up to 25 words as a Back-Cover Text, to the end of the list of Cover Texts in the Modified Version. Only one passage of Front-Cover Text and one of Back-Cover Text may be added by (or through arrangements made by) any one entity. If the Document already includes a cover text for the same cover, previously added by you or by arrangement made by the same entity you are acting on behalf of, you may not add another; but you may replace the old one, on explicit permission from the previous publisher that added the old one.

    The author(s) and publisher(s) of the Document do not by this License give permission to use their names for publicity for or to assert or imply endorsement of any Modified Version.
    COMBINING DOCUMENTS

    You may combine the Document with other documents released under this License, under the terms defined in section 4 above for modified versions, provided that you include in the combination all of the Invariant Sections of all of the original documents, unmodified, and list them all as Invariant Sections of your combined work in its license notice, and that you preserve all their Warranty Disclaimers.

    The combined work need only contain one copy of this License, and multiple identical Invariant Sections may be replaced with a single copy. If there are multiple Invariant Sections with the same name but different contents, make the title of each such section unique by adding at the end of it, in parentheses, the name of the original author or publisher of that section if known, or else a unique number. Make the same adjustment to the section titles in the list of Invariant Sections in the license notice of the combined work.

    In the combination, you must combine any sections Entitled “History” in the various original documents, forming one section Entitled “History”; likewise combine any sections Entitled “Acknowledgements”, and any sections Entitled “Dedications”. You must delete all sections Entitled “Endorsements.”
    COLLECTIONS OF DOCUMENTS

    You may make a collection consisting of the Document and other documents released under this License, and replace the individual copies of this License in the various documents with a single copy that is included in the collection, provided that you follow the rules of this License for verbatim copying of each of the documents in all other respects.

    You may extract a single document from such a collection, and distribute it individually under this License, provided you insert a copy of this License into the extracted document, and follow this License in all other respects regarding verbatim copying of that document.
    AGGREGATION WITH INDEPENDENT WORKS

    A compilation of the Document or its derivatives with other separate and independent documents or works, in or on a volume of a storage or distribution medium, is called an “aggregate” if the copyright resulting from the compilation is not used to limit the legal rights of the compilation’s users beyond what the individual works permit. When the Document is included in an aggregate, this License does not apply to the other works in the aggregate which are not themselves derivative works of the Document.

    If the Cover Text requirement of section 3 is applicable to these copies of the Document, then if the Document is less than one half of the entire aggregate, the Document’s Cover Texts may be placed on covers that bracket the Document within the aggregate, or the electronic equivalent of covers if the Document is in electronic form. Otherwise they must appear on printed covers that bracket the whole aggregate.
    TRANSLATION

    Translation is considered a kind of modification, so you may distribute translations of the Document under the terms of section 4. Replacing Invariant Sections with translations requires special permission from their copyright holders, but you may include translations of some or all Invariant Sections in addition to the original versions of these Invariant Sections. You may include a translation of this License, and all the license notices in the Document, and any Warranty Disclaimers, provided that you also include the original English version of this License and the original versions of those notices and disclaimers. In case of a disagreement between the translation and the original version of this License or a notice or disclaimer, the original version will prevail.

    If a section in the Document is Entitled “Acknowledgements”, “Dedications”, or “History”, the requirement (section 4) to Preserve its Title (section 1) will typically require changing the actual title.
    TERMINATION

    You may not copy, modify, sublicense, or distribute the Document except as expressly provided under this License. Any attempt otherwise to copy, modify, sublicense, or distribute it is void, and will automatically terminate your rights under this License.

    However, if you cease all violation of this License, then your license from a particular copyright holder is reinstated (a) provisionally, unless and until the copyright holder explicitly and finally terminates your license, and (b) permanently, if the copyright holder fails to notify you of the violation by some reasonable means prior to 60 days after the cessation.

    Moreover, your license from a particular copyright holder is reinstated permanently if the copyright holder notifies you of the violation by some reasonable means, this is the first time you have received notice of violation of this License (for any work) from that copyright holder, and you cure the violation prior to 30 days after your receipt of the notice.

    Termination of your rights under this section does not terminate the licenses of parties who have received copies or rights from you under this License. If your rights have been terminated and not permanently reinstated, receipt of a copy of some or all of the same material does not give you any rights to use it.
    FUTURE REVISIONS OF THIS LICENSE

    The Free Software Foundation may publish new, revised versions of the GNU Free Documentation License from time to time. Such new versions will be similar in spirit to the present version, but may differ in detail to address new problems or concerns. See https://www.gnu.org/licenses/.

    Each version of the License is given a distinguishing version number. If the Document specifies that a particular numbered version of this License “or any later version” applies to it, you have the option of following the terms and conditions either of that specified version or of any later version that has been published (not as a draft) by the Free Software Foundation. If the Document does not specify a version number of this License, you may choose any version ever published (not as a draft) by the Free Software Foundation. If the Document specifies that a proxy can decide which future versions of this License can be used, that proxy’s public statement of acceptance of a version permanently authorizes you to choose that version for the Document.
    RELICENSING

    “Massive Multiauthor Collaboration Site” (or “MMC Site”) means any World Wide Web server that publishes copyrightable works and also provides prominent facilities for anybody to edit those works. A public wiki that anybody can edit is an example of such a server. A “Massive Multiauthor Collaboration” (or “MMC”) contained in the site means any set of copyrightable works thus published on the MMC site.

    “CC-BY-SA” means the Creative Commons Attribution-Share Alike 3.0 license published by Creative Commons Corporation, a not-for-profit corporation with a principal place of business in San Francisco, California, as well as future copyleft versions of that license published by that same organization.

    “Incorporate” means to publish or republish a Document, in whole or in part, as part of another Document.

    An MMC is “eligible for relicensing” if it is licensed under this License, and if all works that were first published under this License somewhere other than this MMC, and subsequently incorporated in whole or in part into the MMC, (1) had no cover texts or invariant sections, and (2) were thus incorporated prior to November 1, 2008.

    The operator of an MMC Site may republish an MMC contained in the site under CC-BY-SA on the same site at any time before August 1, 2009, provided the MMC is eligible for relicensing.

ADDENDUM: How to use this License for your documents

To use this License in a document you have written, include a copy of the License in the document and put the following copyright and license notices just after the title page:

  Copyright (C)  year  your name.
  Permission is granted to copy, distribute and/or modify this document
  under the terms of the GNU Free Documentation License, Version 1.3
  or any later version published by the Free Software Foundation;
  with no Invariant Sections, no Front-Cover Texts, and no Back-Cover
  Texts.  A copy of the license is included in the section entitled ``GNU
  Free Documentation License''.

If you have Invariant Sections, Front-Cover Texts and Back-Cover Texts, replace the “with…Texts.” line with this:

    with the Invariant Sections being list their titles, with
    the Front-Cover Texts being list, and with the Back-Cover Texts
    being list.

If you have Invariant Sections without Cover Texts, or some other combination of the three, merge those two alternatives to suit the situation.

If your document contains nontrivial examples of program code, we recommend releasing these examples in parallel under your choice of free software license, such as the GNU General Public License, to permit their use in free software."
  :group 'cpmi
  :version "27.1")
