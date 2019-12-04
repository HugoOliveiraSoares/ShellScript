#/bin/bash

if [ "$1" == "" ]; then
  echo "Uso: $0 wordlist.txt"
  echo
  exit
fi

dos2unix $1 >> /dev/null

for palavra in $(cat $1); do
  md5="$(echo -n "$palavra" | md5sum | cut -d" " -f1)"
  b64="$(echo -n "$palavra" | base64)"
  sha="$(echo -n "$palavra" | sha256sum | cut -d" " -f1)"

  echo "$palavra:$md5:$b64:$sha"

done | column -s: -t >> "$1.final"
