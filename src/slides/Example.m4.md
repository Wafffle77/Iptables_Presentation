include(common.m4)dnl
## Basic Exmaple

- A command to add rules takes the following form:
```bash
iptables -A INPUT -s 10.30.30.0/24 -p tcp -m tcp --dport 22 -j ACCEPT
```

- This command does the following:
    - `-A INPUT` adds a rule to the INPUT chain
    - `-s 10.30.30.0/24` matches packets with a source address of 10.30.30.0/24
    - `-p tcp` matches TCP packets
    - `-m tcp --dport 22` uses the TCP module to match a destination port of 22
    - `-j ACCEPT` jumps to the built-in ACCEPT chain, allowing the packet through