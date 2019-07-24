# Scope

[Scope](http://en.wikipedia.org/wiki/Scope_(computer_science)) is the context in which a variable name is valid and can be used.

A name is **in scope** (accessible) if the name has been previously defined in the current method (called a **local variable**) or at a higher level of the current method. A new level starts whenever we begin a class, a method, or a block.

# Global variables

*NOTE*: This last bit about global variables is not essential.

While you shouldn't typically create global variables, you can do so with the `$` prefix.

You can also create file-local global variables by defining a variable without `$` at the top-level (outside any block, method, class). However, file-local global variable won't be accessible to other Ruby files that load the file.