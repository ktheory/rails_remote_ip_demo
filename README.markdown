# Rails Remote IP demo

This app illustrates the difference in `request.remote_ip` and `request.ip` in Rails 4+.

## How to run

```
# Clone the repo and run
bin/rails server
```

## See the weirdness:
```
$ curl -H 'Client-IP: 2.2.2.2' localhost:3000/
{"request.remote_ip":"2.2.2.2","request.ip":"127.0.0.1"}

$ curl -H 'Client-IP: 2.2.2.2' -H 'X-Forwarded-For: 2.2.2.2, 3.3.3.3' localhost:3000/
{"request.remote_ip":"3.3.3.3","request.ip":"2.2.2.2"}
```
