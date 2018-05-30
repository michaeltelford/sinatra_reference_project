# Sinatra Reference Project

Reference web app built using the Sinatra web development framework.

Use this repo as a way to learn or fork the repo as a starting point for other Sinatra projects.

## Configured tech

- `sinatra` web app (pre-configured)
- `rake` tasks for running the app
- `thin` web server
- `slim` templating engine
- `sprockets` for asset management (using SCSS and CoffeeScript)
- `sprockets-helpers` for asset retrieval
- `dotenv` for loading of `.env` vars into `ENV`

## Usage

Install the deps with:

    $ bundle

Run the application server and browse to it with:

    $ bundle exec rake browse

Run the tests with:

    $ bundle exec rake test

See the rake tasks for more usage commands with:

    $ bundle exec rake -T
