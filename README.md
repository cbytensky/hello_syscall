# Hello world in Rust in 159 bytes ELF64

Building:

```$ cargo b --release```

Striping using [ELF kickers](https://github.com/BR903/ELFkickers)’ `sstrip`:

```$ sstrip target/release/hello_syscall```
