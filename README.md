GuardPost
=========

GuardPost is a stand-alone [authentication server][1] based on the final version of [OAuth 2.0][2]. It provides a centralized service for both [clients][1] and [resource servers][1]. In addition to standard OAuth endpoints, it provides an API for resource servers who are themselves privliged clients to verify and exchange a valid access token for infomation about the access token's client and [resource owner][1] (if present).

Installation
------------

    gem install guardpost

or in your `Gemfile`

    gem 'guardpost'

Usage
-----

Run the `guardpost` command to start the server.

```sh
guardpost
```

It accepts a number of command-line arguments

```sh
Usage: guardpost [options]
    -v, --version       Print the version
    -p, --port          Use PORT (default: 9292)
    -o, --host          Listen on HOST (default: 0.0.0.0)
    -s, --servers       Run SERVERS server workers (default: 5)
    -w, --workers       Run WORKERS background workers (default: 5)
    -d, --database      Connect to DATABASE (default: postgresql://127.0.0.1:5432)
    -h, --help          Display this help message.
```


Authentication Strategies
-------------------------

GuardPost supports multiple authentication strategies via a plug-in system. A simple e-mail and password strategy is provided by default.

[1]: https://tools.ietf.org/html/rfc6749#section-1.1
[2]: https://tools.ietf.org/html/rfc6749
