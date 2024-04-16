## Persistence

- Because iptables firewalls only exist in memory, the rules are reset every time the computer restarts.
- To counter this, `iptables-persistent` allows you to manually save rules and automatically load them from the disk at boot.
- The command `iptables-save` saves the rules to disk.
- The command `iptables-restore` loads the rules from disk.
- Usually these rules are saved to `/etc/iptables/rules.v4`, but it can differ depending on the distro.