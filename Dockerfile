FROM ruby:3.2

RUN apt-get update -qq && apt-get install -y postgresql-client

# install nodejs(LTS)
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs

# install yarn
RUN npm install --global yarn

WORKDIR app

EXPOSE 3000