# mymetrics
Sensors for private use. Clone repository into /opt/scripts and run ./sensor.pl file. Requipments:
 - LWP
 
 Example
 ./sensor.pl
 ```
 [{hdd: 31552},
 {networkRX: 623991, networkTX: 25647038},
 {nginxReq: 196},
 {loadavg: '0.49 0.51 0.53'},
 {avalhdd:{all:2875655720,useed:1224437136,aval:1505120572}}]
 ```
 
 Where:
 - hdd - speed HDD read (edit needed in to hddread.pl file)
 - Network - RX and TX needed interface in bytes (edit needed in to network.pl file)
 - nginxReq - read stats from nginx statistic (edit in nginx.pl and see more https://nginx.ru/en/docs/http/ngx_http_stub_status_module.html)
 - loadavg - `¯\_(ツ)_/¯`
 - avalhdd - space on / (kbytes)
