---
title: Run jupyter in docker
description: Run jupyter in docker
date: 2024-06-05
slug: jupyterdocker
tags:
  - python
  - jupyter
  - docker
---


```code
docker run -it --rm \
    -p 8888:8888 \
    -v .:/home/jovyan/ \
    -e GRANT_SUDO=yes \
    --user root \
    jupyter/base-notebook:latest \
    start-notebook.sh \
    --NotebookApp.token=''

```

To run an isolated jupyter instance inside a Docker container, this command
assumes that the notebooks are in the current directory.
