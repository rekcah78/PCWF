# PCWF
Parental Control Web Filtering

## Install on Raspberry pi

Install Docker

```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
```

Install Docker Compose

`apt-get install docker-compose`

Install PCWF Service

```
mkdir /srv/docker/
cp ./docker-compose.yaml /srv/docker/
cp ./docker-compose-pcwf.service /etc/systemd/system/
systemctl enable docker-compose-pcwf
```