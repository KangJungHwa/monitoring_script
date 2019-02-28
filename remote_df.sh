#!/usr/bin/expect
pass=$1
arr_server=(
manage.cdh.exem
nn01.cdh.exem
nr02.cdh.exem
rm01.cdh.exem
dn01.cdh.exem
dn02.cdh.exem
dn03.cdh.exem
)

for ser in "${arr_server[@]}"
do
  expect << EOF
  spawn ssh jhkang@$ser "df -Ph"
  expect "*password:"
  send "$pass\r"
  expect eof
EOF
done
