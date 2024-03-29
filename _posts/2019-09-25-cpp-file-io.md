---
layout: post
title: C++ File IO
author: Matthew
tags: c++, programming, fileio, io, input, output, file, reading, writing, beginner, guide, automation, log, logging, blog, post, loam
---

New to c++ but wanting to wield disgusting amounts of power to help you automate all aspects of your life? Well unfortunately, this is just a beginner file input and output tutorial, but it's a start!

There are two types of File IO we can play with: C style and C++ style file IO. While they each have their own set of advantages and disadvantages, C++ style file IO is what we'll be going with for this walkthrough!

### The Basics of Reading

Reading information from a file is a great way to avoid having to write out long chunks of data in code, be it 1000 names for a random name generator, or special holiday dates during the year! 

In order to read a file, we're first going to need We'll begin with reading a file with one line in it that we'll call `test.txt` - go ahead and make that text file now, and write a few things in it. Don't forget to save it! If you're using an IDE, you'll probably want to place this in the same folder as your project. For Visual Studio, this in the same folder as the .vcxproj file. If you're unsure where to put it tho, you can always compile the program and find the executable you've made, and place the file in that folder before running your app with the command line / terminal.

There are many nice functions that can help us read the file and in this case, we'll be using `std::getline`! It reads the next line that hasn't been read yet in the file, and stores it in the variable you give it for use later. Here's an example of how we can use that in combination with something called a file stream, which is a way to represent a specific file on our hard drive that we're interacting with.

<script src="https://gist.github.com/MatthewCech/27e87150c715c19a3418c827971684f1.js"></script>

If everything worked correctly, you should see what you put in the file printed out in the IDE console or in your terminal! If you see the error instead, make sure the file is in the right spot. If your code isn't compiling, you may need to specify a newer version of c++, like c++11. Often times, on the command line, you can tell a compiler like g++ to use this version with the flag `-std=c++11`. 

### The Basics of Writing

Writing files is another excellent tool for your toolbox, and writing files for debugging, among other things, is a super useful thing to be able to do right off the bat! When files are written, they get written to either the location you've specified, or by default to the same folder as your app. Lets start with the basics: Writing "Hello World" to a file!

<script src="https://gist.github.com/MatthewCech/4c654338b74065b8fb2ac23a8feaea24.js"></script>

The code required to write to a file is even less than what you need to read from a file! It's not a bad idea to think about writing to a file in the same way you think about writing a message out to the console. A lot of the same things apply, like [escape characters](https://en.wikipedia.org/wiki/Escape_character)!

### Styles of Writing

In both of the examlpes just at the start of the `main` function, we can see the fstream object being created. Lets have a look at the second argument - these are the flags, or settings, associated with the file stream that we're creating! The flags, which can be combined in the same style as shown above, are as follows:

- `ios:in` Sets the stream to Input (reading) mode.
- `ios:out` Sets the stream to Output (writing) mode.
- `ios:trunc` Overrides existing file content if the file already exists.
- `ios:app` Appends output to the file in question if it exists, otherwise creates a new file.
- `ios:ate` "At end" flag that sets the starting position in a file to the end, rather than the default beginning location.
- `ios:binary` Sets the reading and writing to binary mode- just reads/writes raw data and doesn't do automated formatting stuff like newlines.

These different formats are good for either storing data in a more customized way, or in the case of writing out something like tracked information, appending to a file instead of writing over everything. Building off the examples above, we can now move on to a more complex example!

### A practical application

One of the things that helps me a lot when figuring out how to reproduce a bug is having a log of what happened in the events leading up to it, especailly if the bug was found by someone other than me. In order to do this, I usually have a bit of logging code that writes out specific steps to a file so that if something goes wrong, I can see where and when it failed in relation to other steps it could be on. Below is an example of a rudamentary logging system that provides timestamps for every message I add to the file!

<script src="https://gist.github.com/MatthewCech/55259ea490906ce986924364354b3efb.js"></script>

See the `%c` in the put_time(...) function? That's called a format specifier, and it lets us print out special types of information about the time. Other options exist, like `%Z` for the timezone, which makes it easier to place exactly where thing went wrong on a more world scale if you have people in other places using your app. If you were to use `%c %Z`, you'd see something like this:

09/25/19 14:01:09, Pacific Daylight Time

If you're using Microsoft's compiler (This is what comes with Visual Studio by default), you'll probably recieve the following warning:
_`"Warning C4996 'localtime': This function or variable may be unsafe. Consider using localtime_s instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. See online help for details."`_

To remove this warning, you can use `localtime_s` if you are not intending to cross compile, or you can specifically pass the `_CRT_SECURE_NO_WARNINGS` to the microsoft compiler. If you just want it to go away for now so you can deal with it later, you can use a keyword called `pragm`a to disable it by placing `#pragma warning (disable : 4996)` somewhere in your file before the call to `localtime`, but know that this isn't recognized by other compilers and they'll usually complain about it being there if you don't remove it.

### Final Thoughts

Now that you've got a little bit of reading and writing under your belt, you can start doing all sorts of neat things! Files stick around between application runs, so you can use this to save off stuff like user settings or stats. By using data specified in a file, you can write more generic, 'data driven' code that can be adjusted without having to recompile the application either! 

Looking for more on C++ file reading and writing?
Check out a [different more extensive guide](http://www.cplusplus.com/doc/tutorial/files/), or have a look at [other things fstream can do](http://www.cplusplus.com/reference/fstream/fstream/)! Feel confident in your skills and looking for a next step? [SQLite](https://sqlite.org/index.html) is one of the most used forms of offline databases, and is relatively approachable! 
