import boto.ec2
from tabulate import tabulate
conn = boto.ec2.connect_to_region("ap-southeast-2")

reservations = conn.get_all_reservations()

headers = ['id','public dns name', 'instance type','state', 'ip']
instance_rows =  [ headers ]
for r in reservations:
	for i in r.instances:
		instance_rows.append([i.id,i.public_dns_name,i.instance_type,i.state,i.ip_address]) 	

print tabulate(instance_rows)
