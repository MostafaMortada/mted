# mted

MTEd is a really tiny barebones text editor made because why not. Has the basic features of loading and saving files, writing to them, and basically nothing else.

---

## Usage

You need to first have Lua installed on your operating system.

In order to load a file to edit, you need to pass the filename as an argument to the command:

```
./mted.lua filename.txt
```

If you don't enter any parameters, the filename will default to `untitled.txt`, saved in the directory the command is run from. The file to save to cannon be changed from within the program, you have to manually copy the file externally before you can edit it.

When you first run the `mted`, you will get a number, and a prompt to enter text. This is the edit mode, where you can overwrite text at the line number indicated besides the caret. To switch to the second mode, command mode, press the Escape key, then press Enter. A question mark `?` will replace the line number, which is the indicator for this mode. To switch back to edit mode, press Escape then Enter. From command mode, you can enter a few commands:

* `s`: Saves the file.
* `d`: Displays the text file.
* `q`: Exits the program.
* Entering a number will set the current line number being edited to it.

