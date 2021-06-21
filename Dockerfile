FROM curlimages/curl:7.68.0

LABEL "com.github.actions.name"="Post Slack messages"
LABEL "com.github.actions.description"="Post Slack messages from your own bot"
LABEL "com.github.actions.icon"="hash"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.5"
LABEL repository="http://github.com/y8k/slack-action"
LABEL homepage="http://github.com/y8k/slack-action"
LABEL maintainer="y8k<yoonbong.kim@me.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
