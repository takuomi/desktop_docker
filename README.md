# Desktop Environment

## Build
```
docker build --compress --no-cache -t takuomi/desktop .
```

## Run
```
docker run -d -p 3389:3389 --rm --sysctl net.ipv6.conf.all.disable_ipv6=0 takuomi/desktop
```
