# UE4SS for ITR

This is a simple repack of UE4SS_v3.0.1-321-gb47690f with a default config and some patches to make it work for ITR1.0, 2.7, and ITR2.

To build a package from this repo for your release ensure you have `sed`, `zip`, and `make` installed on your system and then run `ITR1` or `ITR2` for the game release you wish to build for.

## Contributing

If a patch can work across both ITR1 (1.0 and 2.7), and ITR2, change the files directly, otherwise alter the make file to include sed commands to swap between the two, you may alter the files directly to make it easier to match with `sed` (usually by adding `--patchmarker` at the end of the lines), a website to help test wether or not your sed works is [sed.js.org](https://sed.js.org/).
