# encoding: utf-8
require_relative "../spec_helper"
require "logstash/plugin"

describe LogStash::Outputs::Mongodb do

  let(:uri)        { 'mongodb://localhost:27017' }
  let(:database)   { 'logstash' }
  let(:collection) { 'logs' }

  let(:config) do
    { "uri" => uri, "database" => database, "collection" => collection }
  end

  it "should register" do
    plugin = LogStash::Plugin.lookup("output", "mongodb").new(config)
    expect {plugin.register}.to_not raise_error
  end
end
