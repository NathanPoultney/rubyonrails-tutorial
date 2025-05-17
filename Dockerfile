# Use the latest Ruby image from Docker Hub
# as the base image (https://hub.docker.com/_/ruby)
FROM ruby:latest

WORKDIR /hello_world

COPY . /hello_world

# Run bundle install to install the Ruby dependencies.
RUN bundle install

# Install Yarn.
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y yarn

# Run yarn install to install JavaScript dependencies.
RUN yarn install --check-files

# Export port 3000
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]