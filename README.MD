# Laravel installer

[![Actions Status](https://github.com/jonathanguo/laravel-installer/workflows/build/badge.svg)](https://github.com/jonathanguo/laravel-installer/actions)

This is an image simply includes laravel installer binary. By using docker container to initialise the laravel application, you don't have to manage your local PHP version and environment.


## How to use

Mount the directory you prefer to initialise new Laravel project, and run the following command by replacing `MY_REPO` with your project name.

```bash
docker run --rm -it \
    --volume $PWD:/app \
    --volume ~/.composer-docker/cache:/tmp/cache \
    chcjonathanguo/laravel-installer:latest new MY_REPO
```