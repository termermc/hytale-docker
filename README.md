# hytale-docker

Run a Hytale server inside a Docker container.

Sponsored by [POOP.NET HYTALE](https://hy.poop.net/)

## Important

The Hytale server downloader requires authentication.

For copyright and logistics reasons, you must run `prepare.sh` and authenticate manually before building the container.

## Preparation

Run `./prepare.sh` to download the downloader and prepare all the game files.
You will be prompted to authenticate with Hytale. Click the link in your terminal (the one with the code), then authorize and return to your terminal.

The script will download the server files and unzip them.

## Building the Image

Once you have prepared the server files, run `./build.sh` to build the Docker image.

## Running

Once the Docker image has been built, you can run `./run.sh` to run it.
The server should start up normally and publish to UDP port `5520` normally.

Once the server is running, type `/auth login device` to authenticate with Hypixel and get a server session token.

After authenticating, the server will ask how it should store credentials. Type `/auth persistence Encryption`.

Open the link in the terminal to authenticate. Once you have authenticated, your server should be joinable!

Game files and state will be stored in the `runtime` directory.
They are persisted across restarts and all game files are accessible from there.

## Updating

To update the server, run `./prepare.sh` and then `./build.sh`. You can now restart the Docker container and it will be updated.

## Firewall

Normally, Docker should be able to publish ports when it is running as root.
If you have any trouble connecting to the server, please follow the "Firewall & Network Configuration" guide in the [Hytale Server Manual](https://support.hytale.com/hc/en-us/articles/45326769420827-Hytale-Server-Manual).

## Running with Compose

The [compose.yml](compose.yml) file can be used to run the server as well.

To use it, run `docker compose up -d`.

It is recommended to run the server via `./run.sh` at least once to run the necessary authentication commands.
