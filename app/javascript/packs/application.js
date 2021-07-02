// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery_ujs
//= require jquery
//= require turbolinks
//= require bootstrap.min
//= require bootstrap-sprockets
//= require fontawesome.min
//= require_tree .

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap"
import "../stylesheets/application"

import "../includes/posts.js"
import "../includes/pagination.js"
import "../includes/image_preview.js"
import "../includes/check_online.js"

import $ from 'jquery';
global.$ = jQuery;

Rails.start()
Turbolinks.start()
ActiveStorage.start()
