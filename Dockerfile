FROM debian:stable-slim

LABEL "maintainer"="Odohi David <odohi.david@gmail.com>"
LABEL "repository"="https://github.com/spankie/actions"
LABEL "version"="1.0.0"

LABEL "com.github.actions.name"="Buffalo"
LABEL "com.github.actions.description"="Run buffalo commands with this action"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="orange"

RUN apt-get update && apt-get install -y \
  openssh-client && \
  rm -Rf /var/lib/apt/lists/*


ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]