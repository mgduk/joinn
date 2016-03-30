[![Build Status](https://travis-ci.org/mgduk/joinn.svg?branch=master)](https://travis-ci.org/mgduk/joinn)
[![GitHub issues](https://img.shields.io/github/issues/mgduk/joinn.svg)](https://github.com/mgduk/joinn/issues)

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
