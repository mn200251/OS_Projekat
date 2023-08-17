# 1 "src/contextSwitchThreadEnded.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 32 "<command-line>" 2
# 1 "src/contextSwitchThreadEnded.S"
.global contextSwitchThreadEnded
.type contextSwitchThreadEnded, @function
contextSwitchThreadEnded:
    ld ra, 0 * 8(a0)
    ld sp, 1 * 8(a0)

    ret
