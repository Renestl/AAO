Debugging Cheatsheet
If you're banging your head against the wall, some tips:

Find the top line that looks familiar. Put a debugger on that line. Print out everything that shows up on the line.
Google it
If there are lines of code that are really long, break them down into parts.
Trace back: "What method calls `check_valid_move??` Where does `cats` get assigned? Let's put a debugger there." Keep working "backwards" towards the source.
Comment out lines of code until the error changes.
Go back to when you had it working and see what changed.
Reference the [learn how to debug](https://asherkingabramson.com/blog/productivity/learn-to-debug) blog post.