#![no_std]
#![no_main]

#[panic_handler]
fn panic(_info: &core::panic::PanicInfo) -> ! {
	loop {}
}

use syscalls::*;

const MESSAGE: &str = "Hello World!\n";

#[no_mangle]
pub unsafe extern fn _start() {
	_ = syscall!(Sysno::write, 1, MESSAGE.as_ptr(), MESSAGE.len());
	_ = syscall!(Sysno::exit, 0);
}
