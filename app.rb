
require 'bundler'
Bundler.require

#require_relative "db/gossip"

$:.unshift File.expand_path("./../lib", __FILE__)

#require "app/controller"
#require "app/gossip"
require "router"
#require "app/view"


Router.new.perform

binding.pry
