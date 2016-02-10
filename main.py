import smtplib
import sys

from __future__ import print_function

if len(sys.argv) < 8 :
  print("There should be 8 arguments")
  sys.exit(1)

fromaddr = str(sys.argv[1])
toaddrs = str(sys.argv[2])
subject  = str(sys.argv[3])
body  = str(sys.argv[4])
username  = str(sys.argv[5])
password  = str(sys.argv[6])
host  = str(sys.argv[7])

msg = "Subject: " + subject + "\nFrom:" + fromaddr + "\nTo: " + toaddrs + "\n" + body
server = smtplib.SMTP(host)
server.starttls()
server.login(username,password)
server.sendmail(fromaddr, toaddrs, msg)
server.quit()
