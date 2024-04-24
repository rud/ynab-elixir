#!/bin/sh
set -xe

docker run --rm -v ${PWD}:/local openapitools/openapi-generator-cli:v7.5.0 generate \
  -i https://api.ynab.com/papi/open_api_spec.yaml \
  --invoker-package YNAB \
  -g elixir \
  -o /local

mix format "lib/ynab/api/*.{ex}" "lib/ynab/model/*.{ex}"
