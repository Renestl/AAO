#Singleton

The [Singleton module](https://ruby-doc.org/stdlib-1.9.3/libdoc/singleton/rdoc/Singleton.html#module-Singleton-label-Usage) implements the Singleton pattern.

To use Singleton, include the module in your class.

```
class Klass
   include Singleton
   # ...
end
```

This ensures that only one instance of Klass can be created.

