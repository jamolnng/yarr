fn main() {
    println!("cargo:rerun-if-changed=src/asm/trap.S");
    println!("cargo:rerun-if-changed=src/asm/rv32i.S");
    println!("cargo:rerun-if-changed=src/asm/rv64i.S");
}