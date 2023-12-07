#!/usr/bin/env just --justfile
export PATH := "./node_modules/.bin:" + env_var('PATH')

build:
  pnpm run build

push: build
    git add .
    git commit -m 'update'
    git push
