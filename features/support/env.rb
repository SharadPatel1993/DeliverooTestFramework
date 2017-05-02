require 'watir'
require 'rspec/expectations'
require 'pry'

require File.dirname(__FILE__) + '/pages/generic.rb'
Dir[File.dirname(__FILE__) + '/pages/*.rb'].each { |f| require f }