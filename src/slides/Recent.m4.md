include(common.m4)dnl
## Recent Module

Allows you to dynamically create a list of IP addresses and then match against that list in a few different ways.

| Name         | Description                                                                        |
| ------------ | ---------------------------------------------------------------------------------- |
| `--name`     | Name of the list to use                                                            |
| `--set`      | Adds the source address of the packet to the list.                                 |
| `--rcheck`   | Checks if the source address is in the list                                        |
| `--remove`   | Remove the source address from the list                                            |
| `--seconds`  | Limits the match of `--rcheck` to only within a certain amount of seconds          |
| `--hitcount` | Limits the match of `--rcheck` to be greater than or equal to a value              |
| `--rttl`     | Limits the match of `--rcheck` to have the same TTL as the packet that was `--set` |

```bash
# Basic port knocking for a minecraft server
iptables -A INPUT -p udp --dport 25565 -m recent --name knock --set
iptables -A INPUT -p tcp --dport 25565 -m recent --name knock --seconds 8 --hitcount 1 --rttl --rcheck -j ACCEPT
```