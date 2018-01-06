MEMORY
{
	rom : ORIGIN = 0x00000000, LENGTH = 0x00000108
	ram : ORIGIN = 0x00000108, LENGTH = 0x0FFFF000
}

SECTIONS
{
	. = 0x00000000;
	.rom :
	{
		*(.rom)
	} > rom

	.text :
	{
		*(.text)
	} > ram

	.rodata :
	{
		*(.rodata)
	} > ram

	.data :
	{
		*(.data)
	} > ram

	.bss :
	{
		*(.bss)
	} > ram
}
