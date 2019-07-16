# frozen_string_literal: true

class Solution
  include Mongoid::Document
  @db = nil

  def self.mongo_client
    @db = Mongo::Client.new('mongodb://localhost:27017/test')
  end

  # implement an instance method that returns a reference to the Mongo Collection object
  def self.collection
    mongo_client unless @@db
    @@db[:zips]
  end

  def sample
    self.class.collection.find.first
  end
end

# require 'mongo'
# require 'pp'
# require 'byebug'
# require 'uri'
# #Mongo::Logger.logger.level = ::Logger::INFO
# #Mongo::Logger.logger.level = ::Logger::DEBUG
###
# byebug
# db=Solution.mongo_client
# #p db
# zips=Solution.collection
# #p zips
# s=Solution.new
# pp s.sample
