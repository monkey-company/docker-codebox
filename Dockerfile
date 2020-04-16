# Note: On Alpine or on recent Node.js it gives an error when building pty.js
# (with many syntax errors reported by g++).
# See https://www.reddit.com/r/webdev/comments/41wyfe/completely_stuck_trying_to_install_codebox/
FROM node:0.10

ENV ARGS="--port=80 --users user1:pass1,user2:pass2"

RUN set -x \
    # Install Codebox.
 && npm install -g codebox \
    # Install dumb-init
    # https://github.com/Yelp/dumb-init
 && DUMP_INIT_URI=$(curl -L https://github.com/Yelp/dumb-init/releases/latest | grep -Po '(?<=href=")[^"]+_amd64(?=")') \
 && curl -Lo /usr/local/bin/dumb-init "https://github.com/$DUMP_INIT_URI" \
 && chmod +x /usr/local/bin/dumb-init \
    # Basic check that it works.
 && codebox --version \
    # Create a writable folder to host the worksapce.
 && mkdir /workspace \
 && chmod go+rwx /workspace

VOLUME ["/workspace"]
EXPOSE 80
ENTRYPOINT ["dumb-init"]
RUN codebox run /workspace $ARGS; exit 0
