Like Array.join, but allows for a different separator between the last two items.

Examples:
```
joinn(['a', 'b', 'c'], ', ', ' & ')
// => 'a, b & c'

joinn([['j', 'i', 'n'], 'o', 'n'])
// => 'joinn'

joinn(['foo', 'bar', 'baz', 'malcolm'], '; ', '; and ')
// => 'foo; bar; baz; and malcolm'
```
