# Sinatra Reference Project

Reference web app built using the Sinatra web development framework.

Use this repo as a way to learn or fork the repo as a starting point for other Sinatra projects.

## Configured tech

- Pre-configured `sinatra` web app
- `thin` web server
- `slim` templating engine
- `sprockets` for asset management (using SCSS and CoffeeScript)
- `sprockets-helpers` for asset retrieval

## Usage

To run the application server, use the command:

    $ bundle exec rake serve
    $ curl http://localhost:8080

See the rake tasks for more usage commands with:

    $ bundle exec rake -T

To run the tests, use the command:

    $ bundle exec rake test
