# PartialKeyOverwriteCafe

This is a patched version of [rajkosto](https://switchtools.sshnuke.net/)'s PartialKeyOverwrite, suitable for cracking keys using the partial key overwrite vulnerability in BroadOn's hardware AES engine (used on the Wii and Wii U).

The patch is implemented as a hook to the main work function, with the hook body in a new PE section created as a code-cave; the hook changes the initial key when required, to match the keys used here (this engine uses a FIFO rather than specifying an index to write to).

The patched executable is contained in the repository and in the releases, the hook code (assembled using fasm, with everything written into the binary manually using a hex editor, and CFF Explorer used to add the new section) is also included in the repository.
