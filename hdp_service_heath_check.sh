ambari_addr="http://10.10.30.127:8080"
cluster_name="HDP_Exem"
arr_service=(
HDFS
HIVE
OOZIE
HBASE
)

for service in "${arr_service[@]}"
do 
 curl -u admin:admin -H "X-Requested-By: ambari" -X GET ${ambari_addr}/api/v1/clusters/${cluster_name}/services/${service}?fields=ServiceInfo/state
done
