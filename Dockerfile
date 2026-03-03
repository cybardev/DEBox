FROM debian:13

RUN apt update && apt install bash tree fping python3 git neovim ssh -y

CMD ["service", "ssh", "start", "-D"]
