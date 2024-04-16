include(common.m4)dnl
% Iptables
% Ethan Clark
% Primarily sourced from [iptables(8)](https://linux.die.net/man/8/iptables)

define({includeSlide}, {
include($1)

----------
})

includeSlide(Overview.m4.md)
includeSlide(Rules.m4.md)
includeSlide(Targets.m4.md)
includeSlide(Options.m4.md)
includeSlide(Persistence.m4.md)
includeSlide(Example.m4.md)
includeSlide(Packet_Structure.m4.md)
includeSlide(Basic_Matching.m4.md)
includeSlide(Modules.m4.md)
includeSlide(TCP.m4.md)
includeSlide(UDP.m4.md)
includeSlide(ICMP.m4.md)
includeSlide(Conntrack.m4.md)
includeSlide(String.m4.md)
includeSlide(Recent.m4.md)
includeSlide(Time.m4.md)

## A full firewall
Located in `src/examples/firewall.sh`.

```bash
esyscmd({cat src/examples/firewall.sh})
```