## Modules

Oftentimes, more precise analysis of packets is desired for a firewall.
In this case, modules can be used for more precise matching.

Some common modules are:

| Name        | Description                        |
| ----------- | ---------------------------------- |
| `tcp`       | TCP fields                         |
| `udp`       | UDP fields                         |
| `icmp`      | ICMP fields                        |
| `conntrack` | Allows for connection tracking     |
| `string`    | Pattern matching                   |
| `recent`    | Can create lists of recent packets |
| `time`      | Match packet arrival time          |
