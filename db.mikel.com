;

; BIND data file for local loopback interface

;

$TTL	604800

@	IN	SOA	mikelsv.mikel.com. admin.mikel.com. (

			      4		; Serial

			 604800		; Refresh

			  86400		; Retry

			2419200		; Expire

			 604800 )	; Negative Cache TTL

;



       IN      NS      mikelsv.mikel.com.







; Linux server 1 (mikelsv)

@		IN	NS	mikelsv.mikel.com.

@		IN	A	10.2.0.2

mikelsv         IN      A       10.2.0.2

server1		IN	CNAME	mikelsv

www		IN	CNAME	mikelsv





; Linux server 2 (mikelsv2)

mikelsv2        IN      A       10.2.0.3

server2		IN	CNAME	mikelsv2



;Clients

linux		IN	A	10.2.0.201



windowsclient	IN	A	10.2.0.202
