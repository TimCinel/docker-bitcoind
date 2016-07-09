FROM seegno/bitcoind:0.12-alpine

ADD /setuidgid.inc .
ADD /entrypoint.sh .
RUN chmod u+x /entrypoint.sh

EXPOSE 8333
CMD [ "bitcoind", "-printtoconsole" ]
