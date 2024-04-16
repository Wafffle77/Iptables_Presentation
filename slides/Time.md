## Time Module

This matches if the packet arrival time/date is within a given range.

|Name|Description|
|-|-|
|`--timestart`|Match only if after the given time (HH:MM)|
|`--timestop`|Match only if before the given time (HH:MM)|
|`--days`|Match only if today is one of the given days|
|`--datestart`|Match only if after the given date (YYYY[:MM[:DD[:hh[:mm[:ss]]]]])|
|`--datestop`|Match only if before the given date (YYYY[:MM[:DD[:hh[:mm[:ss]]]]])|

```bash
# Only allows traffic during work hours
iptables -A INPUT -m time --timestart 08:00 --timestop 17:00 --days mon,tue,wed,thu,fri -j ACCEPT
```