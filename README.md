# Hello world in Rust in 159 bytes

Using [ELF kickers](https://github.com/BR903/ELFkickers)’ `sstrip` for binary minimizing.

Building:

```
$ cargo b --release
$ sstrip target/release/helloworld_syscall
```



