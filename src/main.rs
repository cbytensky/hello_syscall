#![no_std]
#![no_main]

#[panic_handler]
fn panic_loop(_info: &core::panic::PanicInfo) -> ! {
	loop {}
}

use syscalls::*;

const HELLO: &str = "Hello World!\n";

#[allow(unused_must_use)]
#[no_mangle]
pub unsafe extern "C" fn _start()  {
	syscall!(Sysno::write, 1, HELLO.as_ptr(), HELLO.len());
	syscall!(Sysno::exit, 0);
}