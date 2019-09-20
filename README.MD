# Laravel installer

This is an image simply includes laravel installer binary. By using docker container to initialise the laravel application, you don't have to manage your local PHP version and environment.


## How to use

```bash
docker run --rm -it --volume $PWD:/app chcjonathanguo/laravel-installer:latest new MY_REPO
```