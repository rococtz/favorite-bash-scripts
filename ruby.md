* Required function arguments
```ruby
def foo(bar:)
  puts bar
end

foo # => ArgumentError: missing keyword: bar
foo(bar: 'baz') # => 'baz'
```

* Keyword args
```ruby
def foo(bar: 12)
  puts bar
end

foo # => 12
foo(12) # => ArgumentError: expecting keyword args
foo(bar: 12) # => 12
```
