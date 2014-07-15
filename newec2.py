import boto.ec2

conn = boto.ec2.connect_to_region('ap-southeast-2')

# Create new Ubuntu 14.01 server instance with the security group 'web'
conn.run_instances(
	'ami-d33e5ae9',
	key_name='aws2',
	instance_type='t2.micro',
	security_groups=['web'])

# Show what's running
reservations = conn.get_all_reservations()

print "Instances running on ap-southeast-2:"
for r in range(0, len(reservations)):
	instances = reservations[r].instances
	print instances,