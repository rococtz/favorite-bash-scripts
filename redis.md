* Access redis
```
$ redis-cli
```

* List all keys
```
> KEYS *
```

* List all keys - pattern
```
> KEYS my-pattern*
```

* Get/Set data
```
> SET "123" "cat"

> GET "123"
=> "cat"
```

* Live monitor
```
MONITOR
```
