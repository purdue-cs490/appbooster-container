# AppBooster Docker Container

## Build container image

```docker build -t "appbooster-container" .```

## Start container

```docker run -i -t -v /u/controls/test:/u/control appbooster-container "/bin/bash"```
