include(common.m4)dnl
## IP Packet Structure

Sourced from [Wikipedia](https://en.wikipedia.org/wiki/Internet_Protocol_version_4#Packet_structure)

dnl Only insert the HTML if targeting HTML. Otherwise, insert the screenshot as a data URL.
ifelse(TARGET, {HTML}, include(packet.m4.html), ![image](data:image/png;base64,esyscmd({base64 -w0 src/slides/packet.png})))
