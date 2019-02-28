echo "################################"
echo "Usage Grand Total"
echo "################################"
hdfs dfs -du -s -h /
echo " "

echo "################################"
echo "Usage Total By Directory"
echo "################################"
directory=$(hdfs dfs -ls / | awk ' NR == 1 {next} {printf $8 "\n"}')
hdfs dfs -du -s -h $directory
echo " "

echo "################################"
echo "Usage Total By User"
echo "################################"

user=$(hdfs dfs -ls /user | awk ' NR == 1 {next} {printf $8 "\n"}')
hdfs dfs -du -s -h $user
echo " "

echo "################################"
echo " HDFS Health Check Report"
echo "################################"
