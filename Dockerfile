FROM debian:13

RUN apt update && apt install -y bash tree fping openssh-server git neovim python3

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN mkdir -p /run/sshd

WORKDIR /debox
COPY entrypoint.sh /debox/entrypoint.sh
RUN chmod +x /debox/entrypoint.sh

CMD ["/debox/entrypoint.sh"]
