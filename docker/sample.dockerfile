FROM ruby:2.5

ARG DB_PASSWORD
ARG R_ENV

ENV DATABASE_PASSWORD $DB_PASSWORD
ENV RAILS_ENV R_ENV
RUN apt-get update && apt-get install -y apt-transport-https
# installing yarn dependencies
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get install -y nodejs
RUN apt-get update && apt-get install -y yarn


RUN gem install rubygems-update
RUN update_rubygems
RUN gem update --system
RUN apt-get -y install curl

RUN mkdir /myapp
WORKDIR /myapp
COPY Gemfile ./Gemfile
RUN bundle install


COPY . /myapp

RUN yarn install

# Add a script to be executed every time the container starts.
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
