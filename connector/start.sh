#! /bin/bash
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' 192.168.33.124:8083)" != "200" ]]
    do sleep 5
done

echo "\n --------------Creating connectors..."
for filename in ./*.json; do
  curl -X POST -H "Content-Type: application/json" -d @$filename http://192.168.33.124:8083/connectors/
done