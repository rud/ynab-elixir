#!/bin/sh
set -xe

docker run --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli:2.4.0-elixir-uuid generate \
  -t /local/template \
  -i https://api.ynab.com/papi/open_api_spec.yaml \
  --invoker-package YNAB \
  -l elixir \
  -o /local

mix format "lib/ynab/api/*.{ex}" "lib/ynab/model/*.{ex}"
