OUTPUT_FORMAT("elf64-x86-64")
ENTRY(_start)
PHDRS {
	text PT_LOAD FILEHDR PHDRS;
}

SECTIONS
{
	. = SIZEOF_HEADERS;
	t : {
		KEEP (*(.init))
		*(.text*)
		KEEP (*(.fini))
		*(.rodata*)
		*(.data*)
		*(.bss*)
	} :text
	.init_array : {
		PROVIDE_HIDDEN (__init_array_start = .);
		KEEP (*(SORT_BY_INIT_PRIORITY(.init_array*)))
		PROVIDE_HIDDEN (__init_array_end = .);
	} :text

	/DISCARD/ : {
		*(.dyn*)
		*(.gnu*)
		*(.interp)
	}
}
