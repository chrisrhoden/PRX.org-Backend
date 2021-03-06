# encoding: utf-8

require 'test_helper'
SimpleCov.command_name 'test:representers'

require 'producer' if !defined?(AudioFile)

describe Api::ProducerRepresenter do

  let(:producer)    { FactoryGirl.create(:producer) }
  let(:representer) { Api::ProducerRepresenter.new(producer) }
  let(:json)        { JSON.parse(representer.to_json) }
  
  it 'create representer' do
    representer.wont_be_nil
  end

  it 'use representer to create json' do
    json['id'].must_equal producer.id
  end

end
