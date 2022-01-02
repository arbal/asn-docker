## asn-docker
### [Docker Hub](https://hub.docker.com/r/arbal/asn)

Dockerized ASN Lookup Tool and Traceroute Server ([nitefood/asn](https://github.com/nitefood/asn))

**Usage:**

`docker run -it arbal/asn [-d] HOST`

**Examples:**

> Regular lookup:

`docker run -it arbal/asn 8.8.8.8`

> ![screenshot of output](/../screenshots/images/screenshot__docker_run_arbal_asn_8.8.8.8.png?raw=true "SCREENSHOT docker run arbal/asn 8.8.8.8")

> Detailed lookup:

`docker run -it arbal/asn -d 8.8.8.8`

> Run web server:

`docker run -it -p 49200:49200 arbal/asn -l 0.0.0.0 --allow 192.168.0.0/16`

> Then visit:

> http://localhost:49200/asn_bookmarklet

> http://localhost:49200/asn_lookup&github.com
