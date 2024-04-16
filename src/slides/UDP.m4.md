include(common.m4)dnl
## UDP Module

The UDP module allows for matching UDP fields and related information.
It is automatically loaded if `-p udp` is used.

| Name                            | Description                                                           |
| ------------------------------- | --------------------------------------------------------------------- |
| `--source-port`, `--sport`      | UDP Source Port      (Can also be a service name instead of a number) |
| `--destination-port`, `--dport` | UDP Destination Port (Can also be a service name instead of a number) |

```bash
# Allow DNS in
iptables -A INPUT -p udp --dport 53 -j ACCEPT
```