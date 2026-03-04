# DEBox

Debian container for tinkering

## Usage

Clone the repository and run the following commands:

```sh
cp example.env .env
docker compose up -d
ssh -p 4242 root@localhost
```

> [!NOTE]
> Change the password in `.env` if the box is exposed to the network.
