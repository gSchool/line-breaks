# Line Breaks

You work at a news agency.  All of the writers write in plain text, and they all have "soft wraps" turned on in their
editors, so all of the their lines are really, really long.

You need to take these text files, and break the lines up such that no line is longer than a certain number of
characters (80, by default).  You must not break up any words.

## Examples

Let's say you have the following text, and you need to have a max line length of 20:

```
Jean shorts you probably haven't heard of them farm-to-table.
```

The result would be:

```
Jean shorts you
probably haven't
heard of them
farm-to-table.
```

Lines should not have trailing spaces.

# Extra

* Be able to handle empty lines in the input. For example, with a line length of 20 characters, using 
the input of:

```
Jean shorts you probably haven't heard of them farm-to-table.

Another line.
```

would result in:

```
Jean shorts you
probably haven't
heard of them
farm-to-table.

Another line
```

* Go through each file in the data directory and create new file where the text breaks at 80 characters.
Add these new files to an `output` directory, and give them the same names as the original files.



