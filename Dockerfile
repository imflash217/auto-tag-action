FROM node:16-alpine3.13

LABEL "repository"="https://github.com/imflash217/auto-ag-action"
LABEL "homepage"="https://github.com/imflash217/auto-ag-action" 
LABEL "maintainer"="Vinay Kumar"

RUN apk --no-cache add bash git curl jq && npm install -g semver
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]