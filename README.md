# Hello world in Rust in 159 bytes

Building:

```$ cargo b --release```

Striping using [ELF kickers](https://github.com/BR903/ELFkickers)’ `sstrip`:

```$ sstrip target/release/helloworld_syscall```
