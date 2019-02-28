echo "################################"
echo "Grand total"
echo "################################"
hdfs dfs -du -s -h /
echo " "

echo "################################"
echo "Total by directory"
echo "################################"
directory=$(hdfs dfs -ls / | awk ' NR == 1 {next} {printf $8 "\n"}')
hdfs dfs -du -s -h $directory
echo " "

echo "################################"
echo "Total by user"
echo "################################"

user=$(hdfs dfs -ls /user | awk ' NR == 1 {next} {printf $8 "\n"}')
hdfs dfs -du -s -h $user
