Supported tags and respective `Dockerfile` links
================================================

  * [`latest`](https://github.com/wernight/docker-codebox/blob/master/Dockerfile) [![](https://images.microbadger.com/badges/image/wernight/codebox.svg)](http://microbadger.com/images/wernight/codebox "Get your own image badge on microbadger.com")


What is Codebox?
================

[Codebox](https://github.com/CodeboxIDE/codebox) is a complete and modular Cloud IDE. It is an open source component of [codebox.io](https://www.codebox.io/) (Cloud IDE as a Service)


How to use this image
=====================

**This is currently an alpha version. It is not yet up to my Docker images standard.**

    $ docker run -d -p 8080:80 wernight/codebox

Wait a few seconds and open `http://localhost:8080/` in your browser.

You probably want to persist some directories like `/workspace` and `/root/.codebox`, and set up authentication:

    $ docker run -d -p 8080:80 \
        -v $PWD/workspace:/workspace \
        -v $PWD/codebox-config:/root/.codebox \
        wernight/codebox \
        run /workspace --port=80 --users user1:passwd1,user2:passwd2


User Feedback
=============

Having more issues? [Report a bug on GitHub](https://github.com/wernight/docker-codebox/issues).
