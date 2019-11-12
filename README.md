<div align="center">

# MkDocs Docker Image

[![GitHub release][release badge]][latest release] &nbsp;
[![GitHub][LICENSE badge]][LICENSE]

Custom Docker image with [MkDocs](https://www.mkdocs.org/).

</div>

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

## About

[Pendect](https://pendect.com/) is reshaping the way you navigate your daily flood of news.

Stay up to date with news events across the globe and be a part in the fight against fake news.

### Follow us
[![pendecthq on twitter][twitter badge]][twitter]

[twitter badge]: https://img.shields.io/twitter/follow/pendecthq.svg?style=social
[twitter]: https://twitter.com/intent/follow?screen_name=pendecthq
[LICENSE badge]: https://img.shields.io/github/license/Pendect/mkdocs.svg
[LICENSE]: https://github.com/Pendect/mkdocs/blob/master/LICENSE
[release badge]: https://img.shields.io/github/release/Pendect/mkdocs.svg
[latest release]: https://github.com/Pendect/mkdocs/releases/latest
[star badge]: https://img.shields.io/github/stars/Pendect/mkdocs.svg?style=social
[star]: https://github.com/Pendect/mkdocs
[gh profile]: https://github.com/Pendect
