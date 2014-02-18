class Api::AudioFileRepresenter < Roar::Decorator
  include Roar::Representer::JSON::HAL

  property :id
  property :filename
  property :label
  property :url, decorator_scope: true
  
  def url
    represented.public_url(version: :download)
  end

  link :self do
    api_audio_file_path(represented)
  end
end