# README

## Requirements
- Ruby
- Javascript
- Postgres
- Bundler `gem install bundler`
- Foreman `gem install foreman`

## Installation

Clone the repository and run the following commands in the terminal to get started:

```sh
bundle && yarn install
bundle exec rails db:setup
foreman start -f Procfile.dev
```

This will install any required dependencies, create and setup the database with some seed data, and start the server.

You can navigate to [http://localhost:3000](http://localhost:3000) to see the rendered data.

Go to [http://localhost:3000/users](http://localhost:3000/users) to see the JSON data from the API. 
