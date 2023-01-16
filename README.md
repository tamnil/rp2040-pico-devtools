## GDB rp2040 tools

## openocd cli:

```
openocd -f interface/cmsis-dap.cfg -f target/rp2040.cfg -c "adapter speed 5000"

```

## GDB:

(gdb,gdb-multiarch) <blink.elf>

###

target remote localhost:3333

load

monitor reset init

continue

(...)
