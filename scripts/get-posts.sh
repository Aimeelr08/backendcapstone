#!/bin/bash
# API="${API_ORIGIN:-http://localhost:4741/}"
API="${API_ORIGIN:-https://backendcapstone.herokuapp.com}"
URL_PATH="/posts"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
  "post": {
      "title": "'"${TITLE}"'",
      "body": "'"${BODY}"'"
    }
  }'

echo
