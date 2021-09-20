```
#!/bin/bash

prefix=$1
server=$2

for end in {1..254}; do
  nslookup $prefix.$end $server | grep -v -e "can't" -e '^$'
done
```
