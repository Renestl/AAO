# Inspecting Complex Objects

When we start dealing with complex objects, and in particular objects that hold recursive references to other objects, the information provided to us by inspect (what you see when you use p instead of puts) can quickly become overwhelming and unreadable.

One way we can simplify this process is by specifying what information we want to see when we inspect an object. In this case, we may only be interested in what a Node's value is. We can do this by overriding the default inspect instance method for our class (this is inherited from Object).

```
class PolyTreeNode
  # ...
  # ...
  def inspect
    @value.inspect
  end
end
```

We can output more complex information as well, for example:

```
class PolyTreeNode
  # ...
  # ...
  def inspect
    { 'value' => @value, 'parent_value' => @parent.value }.inspect
  end
end
```

Overriding inspect isn't always necessary, and you won't do it in every case. However it's an excellent option if you're having trouble reading rspec output or finding needed data in your objects when debugging.