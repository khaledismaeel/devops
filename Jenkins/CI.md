# Continuous integration

We used two frameworks for continuous integration: GitHub Actions and JenkinsCI.

## GitHub Actions

We have a single GitHub action for linting, testing, building, and deploying the application. Some of our best practices
are:
- Utilizing [cache](https://github.com/actions/cache) to reduce dependency installation and image building times.
- Using the GitHub Secrets tool for storing authentication information.

## Jenkins

The best practice of Jenkins that we found is not to use Jenkins in our particular case; we have GitHub actions to serve
us quite well. Our configuration was minimalistic indeed; too scared to break anything.