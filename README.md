FORKED FROM : https://github.com/wernight/docker-codebox
========================================================

Supported tags and respective `Dockerfile` links
================================================

  * [`latest`](https://github.com/monkeycompany/docker-codebox/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/monkeycompany/codebox.svg)](http://microbadger.com/images/monkeycompany/codebox "Get your own image badge on microbadger.com")


What is Codebox?
================

[Codebox](https://github.com/CodeboxIDE/codebox) is a complete and modular Cloud IDE. It is an open source component of [codebox.io](https://www.codebox.io/) (Cloud IDE as a Service)


How to use this image
=====================

**This is currently an alpha version. It is not yet up to my Docker images standard.**

    $ docker run -d -p 8080:80 monkeycompany/codebox

Wait a few seconds and open `http://localhost:8080/` in your browser.

You probably want to persist some directories like `/workspace` :

    $ docker run -d -p 8080:80 \
        -v $PWD/workspace:/workspace \
        -e ARGS='--port=80 --users user1:pass1,user2:pass2'
        monkeycompany/codebox \
        run /workspace


User Feedback
=============

Having more issues? [Report a bug on GitHub](https://github.com/monkeycompany/docker-codebox/issues).
