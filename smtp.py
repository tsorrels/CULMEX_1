import smtplib

msg = "From: me\r\nTo: you\r\n\r\nThis is a message\r\n"

server = smtplib.SMTP('192.168.1.1')
server.sendmail("me", "you", msg)
server.quit()
