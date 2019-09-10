Old rubies
==========

ruby:`version`: with *-devel packages
ruby:`version`-slim: without *-devel packages

Tags
----

1.8.7-p374: `ruby:1.8.7` `ruby:1.8.7-slim`
1.9.3-p551: `ruby:1.9.3` `ruby:1.9.3-slim`
2.0.0-p648: `ruby:2.0.0` `ruby:2.0.0-slim`
2.1.10: `ruby:2.1.10` `ruby:2.1.10-slim`
2.2.10: `ruby:2.2.10` `ruby:2.2.10-slim`
2.3.8: `ruby:2.3.8` `ruby:2.3.8-slim`

Build
-----

    $ docker container prune # WARNING! removes all stopped containers!
    $ docker image prune -A # WARNING! removes all images!
    $ make
    $ make push