import boto.ec2


for r in boto.ec2.regions():
	print r.name
