# GitHub Pages currently supports the Ruby/Jekyll stack represented by the
# github-pages gem in the Gemfile.
FROM ruby:3.3-slim

# Keep Bundler's project definition outside /srv/jekyll. During development
# that directory is bind-mounted from the host and may contain a Gemfile.lock
# that differs from the bundle baked into this image.
ENV BUNDLE_GEMFILE=/usr/local/share/jekyll/Gemfile

WORKDIR /srv/jekyll

# git is needed by jekyll-remote-theme; Node.js provides the ExecJS runtime
# used when Jekyll compiles CoffeeScript assets.
RUN apt-get update \
    && apt-get install --no-install-recommends -y build-essential git nodejs \
    && rm -rf /var/lib/apt/lists/*

COPY Gemfile /usr/local/share/jekyll/Gemfile
RUN bundle install

COPY . .

EXPOSE 4000 35729

# Listen on all interfaces so the site is reachable from the host machine.
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]
