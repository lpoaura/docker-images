# Docker image for lpoaura/wordpress-wpcli

See docker hub repo for [lpoaura/wordpress-wpcli](https://hub.docker.com/r/lpoaura/wordpress-wpcli).

**Custom WordPress image with wp-cli installed**

Default user is `www-data`

To use:

```bash
docker run --rm -it -v /path/to/local/volume:/var/www/html lpoaura/wordpress-wpcli wp
```
