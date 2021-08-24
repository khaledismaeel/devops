# Docker best practices

- Keeping it simple, stupid. Sticking with the defaults and following danger-free approaches given that we are not 
professionals in Docker.
- Using the default and latest Python image.
- USing a slim Python image given that we don't need the fully blown Python image.
- Running the server as a restricted user.
- Keeping scripts owned by root and read-only.
- Explicitly marking used ports with EXPOSE.