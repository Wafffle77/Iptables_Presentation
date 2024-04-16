## String Module

The string module allows for the matching of arbitrary strings in packets.

| Name           | Description                                                                        |
| -------------- | ---------------------------------------------------------------------------------- |
| `--algo`       | Select the pattern matching strategy. (bm = Boyer-Moore, kmp = Knuth-Pratt-Morris) |
| `--from`       | Specifies the offset to start looking at                                           |
| `--to`         | Specifies the offset to stop matching at                                           |
| `--string`     | The string to match                                                                |
| `--hex-string` | Same as `--string`, but in hex                                                     | ` |

```bash
# Matches SSH banners
iptables -A INPUT -m string - -algo bm --from 0 --to 65535 --string OpenSSH -j ACCEPT
```