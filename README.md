
Website for NISMOD

## Run locally with Docker

The Docker image uses the `github-pages` gem declared in the `Gemfile`, so its
Jekyll environment follows the GitHub Pages setup.

Build the image:

```sh
docker build --tag nismod-site .
```

For development, mount the source directory into the container. Changes to
pages, data, and assets are picked up automatically.

```sh
docker run --rm --interactive --tty \
  --publish 4000:4000 --publish 35729:35729 \
  --volume "$PWD:/srv/jekyll" \
  nismod-site
```

Open <http://localhost:4000/nismod/>. Stop the development server with `Ctrl-C`.
