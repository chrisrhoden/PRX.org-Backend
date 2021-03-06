# encoding: utf-8

class Api::MusicalWorkRepresenter < Roar::Decorator
  include Roar::Representer::JSON::HAL

  property :id
  property :position
  property :title
  property :artist
  property :label
  property :album
  property :year
  property :excerpt_length, as: :length

  link :self do 
    api_musical_work_path(represented)
  end

end
