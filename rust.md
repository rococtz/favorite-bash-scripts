* List file in directory
```rust
let paths = fs::read_dir("./").unwrap();

for path in paths {
    println!("Name: {}", path.unwrap().path().display())
}
```

```
Box: makes any type Sized, by heap allocation
Arc: makes any type Clone, by simply cloning a reference to it instead of the type itself
Mutex: makes any type Sync, by locking access to it
RefCell: converts any & ref to &mut checked at runtime, bypassing the borrow checker (using `borrow_mut`)
```
