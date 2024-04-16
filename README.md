## Iptables Presentation

This repository contains the Markdown source for a presentation about iptables. It is almost entirely sourced from the [iptables man page](https://linux.die.net/man/8/iptables), but the IP packet header table came from [Wikipedia](https://en.wikipedia.org/wiki/Internet_Protocol_version_4#Packet_structure).

### Directory Structure:
- `src` contains the m4 source code for the markdown slides
- `slides` contains the individual built markdown slides
- `slides.md` is the entire markdown presentation in one file
- `slides.html` is a [Slidy](https://www.w3.org/Talks/Tools/Slidy2/Overview.html#(1)) presentation built from the markdown source using [Pandoc](https://pandoc.org/) and [m4](https://www.gnu.org/software/m4/).

### Building
The project can be built using `make`. 
Building requires `pandoc`, `m4`, and `base64` (for embedding images) in addition to `make`.
The targets can be listed with `make help`, and the directory can be cleaned with `make clean`.