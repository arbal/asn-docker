FROM debian:stable

RUN apt-get update && apt-get install -y curl whois bind9-host mtr-tiny jq ipcalc grepcidr ncat aha

RUN mkdir -p /app
RUN curl "https://raw.githubusercontent.com/arbal/asn/master/asn" > /app/asn
RUN chmod 0755 /app/asn

EXPOSE 49200/tcp
ENTRYPOINT ["/app/asn"]
CMD ["-h"]