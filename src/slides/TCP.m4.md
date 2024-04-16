include(common.m4)dnl
## TCP Module

The TCP module allows for matching against TCP fields and related information.
It is automatically loaded if `-p tcp` is used.

| Name                            | Description                                                                                                                                     |
| ------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| `--source-port`, `--sport`      | TCP Source Port (Can also be a service name instead of a number)                                                                                |
| `--destination-port`, `--dport` | TCP Destination Port (Can also be a service name instead of a number)                                                                           |
| `--tcp-flags`                   | Allows matching TCP flags: `SYN ACK FIN RST URG PSH ALL NONE` The first argument is a mask, and the second argument is fields which must be set |
| `--syn`                         | Only matches packets with the SYN bit set and ACK,FIN, and RST unset                                                                            |

```bash
# This accepts any TCP packets destined for port 80
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
```