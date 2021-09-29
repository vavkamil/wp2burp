# wp2burp

Intercept WordPress requests with Burp Suite

---

## Installation

1) Open `Burp Suite` and edit the `Proxy Listener` to listen on `All Interfaces`
    - _Proxy > Options > Proxy Listeners > Edit > All Interfaces > OK_

2) Edit `docker-compose.yml` and change IP of the `Proxy Listener`
    - _- "burp:10.10.10.254" # Burp Suite proxy IP_

3) Make sure that `Firewall` is not blocking access to `Proxy Listener`
    - _$ sudo ufw disable_

4) Run `Docker`, install `WordPress` and `Burp Suite` certificate
```bash
$ git clone https://github.com/vavkamil/wp2burp.git
$ cd wp2burp/
$ docker-compose up -d --build
$ docker-compose run --rm --user 33:33 wp-cli install-wp
$ docker exec -ti dvwp-master_wordpress_1 /var/www/html/burp.sh
```

4) Visit the [WordPress instance](http://127.0.0.1:31337/wp-login.php) and login with `admin:admin`
    - _You should see all internal WordPress requests in Burp HTTP history tab_

## Usage

TODO

## Uninstall

```bash
$ docker-compose down
$ docker volume rm dvwp-master_db
$ docker volume rm dvwp-master_wp
```