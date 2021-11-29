#2-8/bin/sh
read db1
echo $db1 >> db.txt
i=1
while read line || [ -n "$line" ] ; do
  echo "Line $i: $line"
  ((i+=1))
done < db.txt
~               
