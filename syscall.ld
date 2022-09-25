ENTRY(_start)
PHDRS {
	text PT_LOAD FILEHDR PHDRS;
}

SECTIONS {
	. = SIZEOF_HEADERS;
	t : {
		*(.text*)
		*(.rodata*)
		*(.data*)
	} :text
	b : {
		*(.bss*)
	} :text
}
