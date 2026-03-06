FROM debian:13

RUN apt update && apt install -y bash tree fping openssh-server git neovim python3 python3-venv

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN mkdir -p /run/sshd

COPY entrypoint.sh /debox/entrypoint.sh
RUN chmod +x /debox/entrypoint.sh

COPY nvim /root/.config/nvim

EXPOSE 22
CMD ["/debox/entrypoint.sh"]
