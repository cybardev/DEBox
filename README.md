# DEBox

Debian container for tinkering

## Usage

> [!NOTE]
> Change the root password in `.env` if the box is exposed to the network.

### Compose File

Clone the repository and run the following commands:

```sh
cp example.env .env
docker compose up -d

# To connect via SSH
ssh -p 4242 root@localhost

# To connect via interactive TTY
docker exec -it -w /root debox bash
```

### `docker run`

To connect via SSH:

```sh
echo ROOT_PASSWORD=toor > .env

docker run \
  -d \
  --env-file .env \
  -m 50MB \
  -p 127.0.0.1:4242:22 \
  --name debox \
  ghcr.io/cybardev/debox:latest

ssh -p 4242 root@localhost
```

To connect via interactive TTY:

```sh
echo ROOT_PASSWORD=toor > .env

docker run \
  -it \
  -w /root \
  --env-file .env \
  -m 50MB \
  --name debox \
  ghcr.io/cybardev/debox:latest \
  bash
```
