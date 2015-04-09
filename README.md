# Docker pdnsd

This repository contains a Dockerfile to build a [pdnsd](http://members.home.nl/p.a.rombouts/pdnsd/index.html) server.

By default, it will run on port 53 (TCP and UDP).

## How to pull already built images?

If you don't want to build it, simply pull the image:

    docker pull matttbe/docker-pdnsd

## How to use your own pdnsd.conf file?

Simply launch (`docker run`) the docker with this option: `-v /PATH/TO/YOUR/pdnsd.conf:/etc/pdnsd.conf:ro`

## How to build?

    git clone https://github.com/matttbe/docker-pdnsd.git
    cd docker-pdnsd
    docker build -t matttbe/docker-pdnsd .

## How to launch it?

You can simply launch it as any other docker image but don't forget to expose and redirect ports, e.g.: you can use the port `1234`. You can also add options at the end, e.g. to only use IPv4 with `-4` option:

    docker run -d -p 1234:53 -p 1234:53/udp -P --name pdnsd matttbe/pdnsd -4
