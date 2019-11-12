# MkDocs Docker Image

Custom Docker image with [MkDocs](https://www.mkdocs.org/).

## About

[Docker](https://docker.com) based documentation testing suite based on [MkDocs](https://www.mkdocs.org/).

Uses [Material](https://squidfunk.github.io/mkdocs-material/) as default theme.

## Dependencies

- [Docker](https://docker.com)
- A working mkdocs.yml in the **root** of your repository

## Install

``` console
docker pull pendect/mkdocs
```

## Usage

From the **root** of your repository

### Help

``` console
docker run -it --rm -v `pwd`:/docs pendect/mkdocs:latest help
```

### Build a project

``` console
docker run -it --rm -v `pwd`:/docs pendect/mkdocs:latest build
```

### Serve a project

``` console
docker run -it --rm -p 8000:8000 -v `pwd`:/docs pendect/mkdocs:latest serve
```

### New project

```console
docker run -it --rm -v `pwd`:/docs pendect/mkdocs:latest new
```

## Contributing
Pull requests are welcome.

For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
