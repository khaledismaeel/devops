# Python best practices

- Trusting the battlefield-tested IDE over our not-so-professional decisions.
- In general, keeping it simple, stupid. No need to bloat the code base given that this is a fairly simple
application, and we are not extremely fluent in Python web development. Concise code means less room for error in this
context.
- Using Flask since it is a mature web development framework, and it allowed us to complete this simple application in a
minimal amount of code.
- Running the application in a WSGI server using Gunicorn.
- Using zoneinfo Python module since it is officially supported by the Python project and is concerned with the official
IANA timezone database.
- Writing the `if __name__ == '__main__'` block.
