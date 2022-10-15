OUTPUT_ARCH("riscv")

ENTRY(_start)

MEMORY
{
  /* flash (rxa!w) : ORIGIN = 0x20010000, LENGTH = 0x6a120 */
  flash (rxa!w) : ORIGIN = 0x20000000, LENGTH = 4M
  itim (wxa!r) : ORIGIN = 0x8000000, LENGTH = 8K
  ram (wxa!r) : ORIGIN = 0x80000000, LENGTH = 16K
}
_stext = 0x20010000;

PROVIDE(_memory_start = ORIGIN(ram));
PROVIDE(_memory_end = ORIGIN(ram) + LENGTH(ram));
PROVIDE(_stack_start = _memory_end);
PROVIDE(_heap_size = 0);

PHDRS
{
  flash PT_LOAD;
  ram PT_LOAD;
  ram_init PT_LOAD;
  itim PT_LOAD;
  itim_init PT_LOAD;
}

SECTIONS
{
  .text.dummy (NOLOAD) :
  {
    . = ABSOLUTE(_stext);
  } >flash AT>flash :flash

  .text _stext : {
    PROVIDE(_text_start = .);
    *(.init);
    *(.init.rust);

    . = ALIGN(4);
    *(.trap);
    *(.trap.rust);

    *(.text .text.*);
    PROVIDE(_text_end = .);
  } >flash AT>flash :flash

  PROVIDE(__global_pointer$ = .);

  .rodata : ALIGN(4) {
    PROVIDE(_rodata_start = .);
    *(.rodata .rodata.*)
    PROVIDE(_rodata_end = .);
    . = ALIGN(4);
  } >flash AT>flash :flash

  .data : ALIGN(4) {
    _data = LOADADDR(.data);
    . = ALIGN(8);
    PROVIDE(_data_start = .);
    *(.sdata .sdata.*) *(.data .data.*)
    PROVIDE(_data_end = .);
  } >ram AT>flash :ram_init

  .bss : ALIGN(4) {
    PROVIDE(_bss_start = .);
    *(.sbss .sbss.*) *(.bss .bss.*)
    PROVIDE(_bss_end = .);
  } >ram AT>ram :ram

  .heap (NOLOAD) :
  {
    _sheap = .;
    . += _heap_size;
    . = ALIGN(4);
    _eheap = .;
  } >ram AT>ram :ram

  .stack (NOLOAD) :
  {
    _stack_end = .;
    . = ABSOLUTE(_stack_start);
    _stack_start = .;
  } >ram AT>ram :ram

  .got (INFO) :
  {
    KEEP(*(.got .got.*));
  } >ram AT>ram :ram

  .eh_frame (INFO) : { KEEP(*(.eh_frame)) }
  .eh_frame_hdr (INFO) : { *(.eh_frame_hdr) }
}