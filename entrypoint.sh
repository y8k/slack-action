#!/bin/sh
set -eu

#if test -z "$SLACK_BOT_TOKEN"; then
#  echo "Set the SLACK_BOT_TOKEN secret."
#  exit 1
#fi

echo "$type"
echo "$status"

for ARG in "$@"
do 
    key=$(echo $ARG | cut -f1 -d=)
    value=$(echo $ARG | cut -f2 -d=)

    case "$key" in 
        type) TYPE=${value} ;;
        status) STATUS=${value} ;;
        *)
    esac
done

echo "type = $TYPE"
echo "status = $STATUS"

#curl -v -X "POST" "https://slack.com/api/chat.postMessage" \
#     -H "Content-Type: application/json; charset: utf-8" \
#     -H "Authorization: Bearer $SLACK_BOT_TOKEN" \
#     -d "{\"channel\":\"${SLACK_CHANNEL_ID}\",\"blocks\":\"${SLACK_MESSAGE_BLOCKS}\"}"
