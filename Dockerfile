# # Container image that runs your code
# FROM alpine:3.10

# # Copies your code file from your action repository to the filesystem path `/` of the container
# COPY entrypoint.sh /entrypoint.sh

# # Code file to execute when the docker container starts up (`entrypoint.sh`)
# ENTRYPOINT ["/entrypoint.sh"]

FROM prontotools/alpine-git-curl
LABEL "com.github.actions.name"="Github Tag Bump"
LABEL "com.github.actions.description"="Bump and push git tag on merge"
LABEL "com.github.actions.icon"="git-merge"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/imflash217/auto-ag-action"
LABEL "homepage"="https://github.com/imflash217/auto-ag-action" 
LABEL "maintainer"="Vinay Kumar"

COPY ./contrib/semver ./contrib/semver
RUN install ./contrib/semver /usr/local/bin
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]