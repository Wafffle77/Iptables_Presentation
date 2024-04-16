include(common.m4)dnl
## Overview

- Iptables is a firewall utility for Linux systems.
- By default, it operates directly on packets, not connections.
    - This is different than other firewalls like Windows, UFW, Firewalld, etc.
    - Connection tracking is supported, but requires extra work.
    - It's pretty much required for complex firewalls, though.
- The firewall is made up of several components
    - Tables contain various chains, and dictate what rules may or may not do, like alter packets.
        - By default, everything goes into the `filter` table, which allows for filtering but not mangling. 
    - Chains contain rules, and dictate what packets are passed to which rules, such as incoming and outgoing packets.
- Rules contain various expressions to operate on packets and perform actions.
    