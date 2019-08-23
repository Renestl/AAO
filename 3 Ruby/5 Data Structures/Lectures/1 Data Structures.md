# Data Structures
[], {}, "", and class

## Abstract Data Type (ADT)
* abstract and more general

### Set
A collection of unique objects

supports 3 operations:
* put something in
* can query set for an item
* delete something

include, <<, and delete

examples: 
`[3, "hello"]  the array implements a set  `
`{3=>true, "hello"=>true}`

### Map / Dictionary
a set of key, value pairs

set(k,v), get(k), delete(k)

[["hello", "world"], [2, 4]]
hello => world
2 => 4

An ADT does not demand an implementation using a certain data structure, only that you keep the same underlying assumptions, guarantees and API that it is expecting.

Certain algorithms will only work if you use certain abstract data types

### Trees

* BFS - breadth-first search
	* layer-by-layer
	* uses queue
* DFS - depth-firsth search
	* straight to the bottom
	* uses stack

BFS and DFS are like siblings
because DFS uses stack, it can be recursive

```
base case: root nil? => nil
					root.val == target => root
inductive step: left.dfs or right.dfs
```

```
dfs (root, target)
	return nil if root is nil
	return root if root.value == target

	root.children.each do |child|
		search_result = dfs(child, target)
		return search_result unless search_result.nil
	end
	nil
end
```