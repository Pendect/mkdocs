# Mkdocs Docker Commands

From the **root** of your documentation project repository

## Help

``` console
docker run -it --rm -v `pwd`:/docs pendect/mkdocs:latest help
```

## Build a project

``` console
docker run -it --rm -v `pwd`:/docs pendect/mkdocs:latest build
```

## Serve a project

``` console
docker run -it --rm -p 8000:8000 -v `pwd`:/docs pendect/mkdocs:latest serve
```

## New project

```console
docker run -it --rm -v `pwd`:/docs pendect/mkdocs:latest new
```
