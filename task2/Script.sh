#!/bin/bash
yum update -y
yum install -y httpd
cd /var/www/html/
touch index.html
cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <title>Button align center</title>

      <style>
         .flex-parent {
            display: flex;
         }

         .jc-center {
            justify-content: center;
         }

         button.margin-right {
            margin-right: 20px;
         }
      </style>
   </head>
   <body>
    <p style="text-align:center">HELLO WORLD</p>
    <p style="text-align:center">Exadel Intership Task02 Extra</p>
    <p style="text-align:center">Static hostname: ip-172-31-42-66.us-east-2.compute.internal</p>
    <p style="text-align:center">Icon name: computer-vm</p>
    <p style="text-align:center">Chassis: vm</p>
    <p style="text-align:center">Machine ID: ec2bacbc48a83a68b2929ad60b2841c7</p>
    <p style="text-align:center">Boot ID: 2c9901eee43d4337b613c9e541536640</p>
    <p style="text-align:center">Virtualization: xen</p>
    <p style="text-align:center">Operating System: Amazon Linux 2</p>
    <p style="text-align:center">CPE OS Name: cpe:2.3:o:amazon:amazon_linux:2</p>
    <p style="text-align:center">Kernel: Linux 4.14.238-182.422.amzn2.x86_64</p>
    <p style="text-align:center">Architecture: x86-64 </p>
   </body>
</html>
systemctl start httpd
systemctl enable httpd
