#!/bin/python
import boto3
client = boto3.client('elb')
names = [lb["LoadBalancerName"] for lb in client.describe_load_balancers()["LoadBalancerDescriptions"]]
names_string = ' '.join(names)
print names_string
