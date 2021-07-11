[![Build Status](https://travis-ci.com/maxbarsukov/ingramstan.svg?branch=master)](https://travis-ci.com/maxbarsukov/ingramstan)
[![Coverage Status](https://coveralls.io/repos/github/maxbarsukov/ingramstan/badge.svg?branch=master)](https://coveralls.io/github/maxbarsukov/ingramstan?branch=master)
[![security](https://hakiri.io/github/maxbarsukov/ingramstan/master.svg)](https://hakiri.io/github/maxbarsukov/ingramstan/master)

# Ingramstan

Allow users to create an account, upload photos, like and comment on photos, follower users and be followed and more.

## Functionality included

- Sign up / sign in / forgot password
- Sign in with Facebook
- Upload images
- Feed of latest posts
- Like and comment on posts
- Follow users and get followed by them
- User profile / edit account details
- Pagination
- Infinite scroll

## About the code

- Built with Ruby on Rails 6
- Using Boostrap 4 for styles
- Carrierwave is used to store user images
- Devise as authentication solution
- will_paginate for pagination
- OmniAuth provides authentication using third-party credentials
- jQuery for interactive likes, comments and infinite scrolling
- Bullet as N+1 problem profiler

## Setup

Clone this repository:

`git clone git@github.com:maxbarsukov/ingramstan.git`

Setup database and seeds:

`bundle exec rails db:create db:migrate db:seed`

Setup your test database:

`bundle exec rails db:test:prepare`

## Run

Dev:
`rails server`


