# Dockerized libvirt-client

## Build
```
docker build -t naturlich/libvirt-client .
```

## Start
Pass the libvirt socket to this container.
```
-v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock
```

```
docker run \
--name libvirt-client \
-v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock \
-d \
naturlich/libvirt-client
```

## Run
Example: list all VMs
```
docker exec libvirt-client virsh list
```
