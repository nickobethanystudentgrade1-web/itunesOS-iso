# bootim.itunes

Development boot-initialization script for iTunes OS 1.0-19.2.

It initializes the iTunes OS userspace, records boot state, optionally runs system/hardware initialization scripts, and hands off to `system/system-ui.sh` when available.

A real bootable OS still requires a bootloader, kernel, drivers, filesystem, and userspace runtime.
