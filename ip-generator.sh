rm -rf /tools/ips.txt
aws ec2 describe-instances --region=ap-southeast-1 --filters "Name=instance-state-code,Values=16" --query 'Reservations[*].Instances[*].[PrivateIpAddress]' --output text >> /tools/ips.txt
aws ec2 describe-instances --region=ap-southeast-1 --filters "Name=instance-state-code,Values=16" --query 'Reservations[*].Instances[*].[PublicIpAddress]' --output text >> /tools/ips.txt
sed -i '/None/d' /tools/ips.txt
