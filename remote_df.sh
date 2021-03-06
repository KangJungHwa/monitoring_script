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
  spawn ssh jhkang@$ser 
	expect "(yes/no)?" {
		send "yes\r"
		expect "*?assword" { send "$pass\r" }
	} "*?assword" { send "$pass\r" }
	send "df -Ph\r"
  expect eof
EOF
done
