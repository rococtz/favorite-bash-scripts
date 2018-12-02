* `xargs` with parameter (make a copy of all files in directory)
```
ls | xargs -I{} cp {} 'copy-{}'
```
