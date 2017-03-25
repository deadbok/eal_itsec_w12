# It security Week 12 OpenSCAP

## Goal ##
To create a packer template that creates a Debian stable image that passes OpenSCAP validation.

## The plan ##

There is no Debian package for OpenSCAP on Debian stable, to side step this issue:

 * Build a staticly linked oscap executable for Debian stable. This makes the
   resulting binary run on the target system without any dependecies.
 * Copy the static oscap binary to the target system
 * Use oscap-ssh from the host system into the target system
 * Remove the static oscap binary from the target system


