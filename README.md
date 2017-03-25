# It security Week 12 OpenSCAP

## Goal ##
To create a packer template that creates a Debian stable image that passes OpenSCAP validation.

## The plan ##

There is no package for OpenSCAP on Debian stable, to side step this issue:

### First ###

**This will not work, since OpenSCAP is not yet staticly linkable.**
See [OpenSCAP for USB Flash Drive - Issue #197](https://github.com/OpenSCAP/openscap/issues/197)

 * Build a staticly linked oscap executable for Debian stable. This makes the
   resulting binary run on the target system without any dependecies.
 * Copy the static oscap binary to the target system
 * Use oscap-ssh from the host system into the target system
 * Remove the static oscap binary from the target system

### Second ###

 * Build a version of OpenSCAP for debian testing.
 * Package this version so it is easy to transfer to the target, and purge after use.
 * Copy the oscap filses to the target system
 * Use oscap-ssh from the host system into the target system
 * Remove the static oscap files from the target system. 

