# Minimal docker image for Socat

Images are built on top of alpine linux and tagged with alpine releases.
Not that alpine does not support `search` keyword in `/etc/resolv.conf`
so you should use FQDN instead of shortcuts.

## Usage

Instead of running socat, just run this image:

```
docker run --rm -it --net host pigri/socat <your args>
```


## Example

You want to develop something on Mac for Docker

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock -p 127.0.0.1:1234:1234 pigri/socat TCP-LISTEN:1234,fork UNIX-CONNECT:/var/run/docker.sock
```
