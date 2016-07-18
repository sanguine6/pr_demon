# pr_demon
A daemon to monitor pull requests (PR) from Bitbucket and trigger builds for the PR on Teamcity.

## Configuration
See `tests/fixtures/config.json` for an example configuration file.

## Usage
Run `cargo run --release -- path/to/config.json` or `cat path/to/config.json | cargo run --release -- -`

Alternatively, if you place the configuration file in `./config/config.json`, you can run the daemon in a Docker
container using `docker-compose up -d --build`

## TODOs:
 - Write tests
 - Refactor HTTP methods
 - Refactor to better support other CI tools and SCM
 
