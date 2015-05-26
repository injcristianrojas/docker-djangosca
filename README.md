# DjangoSCA for Docker

## Description

This project aims to make security analysis for Django applications easier by
embedding the [DjangoSCA](https://bitbucket.org/jsthyer/djangosca/) tool
into a Docker machine.

The Docker project for this is located at
https://registry.hub.docker.com/u/injcristianrojas/djangosca/

## Usage

Go to your Django project directory (the one with the file `manage.py`) and run:

```Shell
docker run --rm -it -v ${PWD}:/workdir:rw injcristianrojas/djangosca
```
