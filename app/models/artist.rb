class Artist

  attr_accessor :id, :name, :created_at, :updated_at

  def self.service
    ChaimzService.new
  end

  def initialize(artist_hash)
    @id         = artist_hash[:id]
    @name       = artist_hash[:name]
    @created_at = artist_hash[:created_at]
    @updated_at = artist_hash[:updated_at]
  end

  def self.find(id)
    artist_hash = service.artist_hash(id)
    Artist.new(artist_hash)
  end

  def self.all
    artists_hash = service.artists_hash
    artists_hash.map { |artist_hash| Artist.new(artist_hash) }
  end
end
