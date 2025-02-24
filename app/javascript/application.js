// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails

import "@hotwired/turbo-rails"
console.log("imported @hotwired/turbo-rails");

import "controllers"
console.log("imported controllers");

import pjs from "controllers/portfolios"
console.log("imported controllers/portfolios");

import "jquery"
console.log("imported jquery");

import "cocoon"
console.log("imported cocoon");

import "jquery_ujs"
console.log("imported jquery_ujs");

import "@popperjs/core"
console.log("imported popperjs/core");

import "bootstrap"
console.log("imported bootstrap");

import "gritter"
console.log("imported gritter");


window.myDebugObject = 
{
  pjs: pjs // this makes the imported object from "controllers/portfolios" available in console.
}