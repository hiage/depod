# depod
A useful container tools for debuging network pod - Docker image based on Alpine Linux.
- bash 
- nmap 
- busybox-extras 
- curl 
- openssh 
- telnet
- nc
- mysql client
- pgsql client

### docker run
```
docker run -it --rm --net=host hiage/depod:latest bash
```

### kubernetes
apply with kubectl
```
cat <<EOF | kubectl apply -f -
apiVersion: v1  
kind: Pod
metadata:
  name: depod
  labels:
    app: depod
spec:
  containers:
  - image: hiage/depod:latest
    command:
      - "sleep"
      - "86400"
    imagePullPolicy: IfNotPresent
    name: depod
  restartPolicy: Always
EOF

kubectl exec -ti depod -- bash
```

delete depod pod.
```
cat <<EOF | kubectl delete -f -
apiVersion: v1  
kind: Pod
metadata:
  name: depod
  labels:
    app: depod
spec:
  containers:
  - image: hiage/depod:latest
    command:
      - "sleep"
      - "86400"
    imagePullPolicy: IfNotPresent
    name: depod
  restartPolicy: Always
EOF
```