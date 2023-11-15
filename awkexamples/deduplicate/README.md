# deduplicate.awk

`deduplicate.awk` reads in a file and outputs a version of the file with duplicate lines removed.  Note that it always keeps the first version of the line seen, so it does not necessarily sort the output.

There's a good explanation for how it works [here](https://unix.stackexchange.com/questions/159695/how-does-awk-a0-work/159697#159697).

A test input file `duplicates.md` is provided.
