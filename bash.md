* `xargs` with parameter (make a copy of all files in directory)
```
ls | xargs -I{} cp {} 'copy-{}'
```

* intervals
```
while true; do echo $(date) && ping google.com; sleep 10; done
```
