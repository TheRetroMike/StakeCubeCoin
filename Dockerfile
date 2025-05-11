FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential unzip -y
WORKDIR /opt/
RUN wget https://github.com/stakecube/StakeCubeCoin/releases/download/v.3.4.7.2/scc-3.4.7.2-linux-nodes.zip
RUN unzip scc-3.4.7.2-linux-nodes.zip
RUN mv sccd /usr/bin/
RUN mv scc-cli /usr/bin/
RUN wget https://raw.githubusercontent.com/TheRetroMike/rmt-nomp/master/scripts/blocknotify.c
RUN gcc blocknotify.c -o /usr/bin/blocknotify
CMD /usr/bin/sccd -printtoconsole
