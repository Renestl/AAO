# Breaking Confusing Methods Into Parts

Your code should read like Hemingway.

## Two important takeaways
1. We named the variables as descriptively as possible.
2. We broke complicated lines down into parts.

Hold yourself to these standards almost every time you write code.

## A Counterargument

There are four major reasons that long variable names are much faster for you in the long run.

1. Over the coming weeks, you're about to get a lot better at typing quickly.
2. Your text editor (i.e., VS Code, Atom, Sublime Text) will autocomplete long variable names.
3. It's easier for someone else to read your code.
4. You reduce the amount of data in your working memory, because you don't have to remember what abbrevations stand for what concepts. Less data in your working memory gives you more space to tackle new problems.


Methods that have a side-effect (modify state) should be named with verbs, e.g. `#activate_account` or `#reveal_card`. Methods that return a useful value should be named with nouns describing their output, e.g. `#full_name` or `#days_since_last_login`.

