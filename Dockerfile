# Note: On Alpine or on recent Node.js it gives an error when building pty.js
# (with many syntax errors reported by g++).
# See https://www.reddit.com/r/webdev/comments/41wyfe/completely_stuck_trying_to_install_codebox/
FROM node:0.10

RUN set -x \
    # Install Codebox.
 && npm install -g codebox \
    # Basic check that it works.
 && codebox --version \
    # Create a writable folder to host the worksapce.
 && mkdir /workspace \
 && chmod go+rwx /workspace

VOLUME ["/workspace"]
EXPOSE 80
CMD ["codebox", "run", "/workspace", "--port=80"]
