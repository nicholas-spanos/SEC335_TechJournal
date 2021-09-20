```
#!/bin/bash
echo "Select your output file: "
read outputfile

echo

host1=$1
port1=$2

printf "Host(s): \t\Port(s)\n" | tee $outputfile
for end in {1..254}; do
  for host in $(echo $host1.$end); do
     for port in $(echo $port1); do
        timeout  .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && printf "$host \t\t$port\n" | tee -a $outputfile
        done
   done
done
 ```
